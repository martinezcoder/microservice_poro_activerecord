require 'singleton'
require 'erb'

class Config
  include Singleton

  def env
    ENV["ENV"] || 'development'
  end

  def db_dir
    File.expand_path('../db', __dir__)
  end

  def migrations_path
    File.join(db_dir, 'migrate')
  end

  def database_configuration
    load_yaml('database.yml')
  end

  def database
    database_configuration.fetch(env)
  end

  private

  def configuration_folder
    File.expand_path('../config', __dir__)
  end

  def load_yaml(filename)
    file = File.read(File.join(configuration_folder, filename))
    compiled_file = ERB.new(file).result
    YAML.load(compiled_file)
  end
end
