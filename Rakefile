require_relative 'config/environment'
require 'erb'

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

def load_yaml(filename)
  file = File.read(filename)
  compiled_file = ERB.new(file).result
  YAML.load(compiled_file)
end

DatabaseTasks.root = __dir__
DatabaseTasks.env = "development"
DatabaseTasks.db_dir = File.expand_path('db/', __dir__)
DatabaseTasks.migrations_paths = File.expand_path('db/migrate', __dir__)
DatabaseTasks.database_configuration = load_yaml('config/database.yml')

task :environment do
  ActiveRecord::Base.establish_connection(
    DatabaseTasks.database_configuration.fetch(DatabaseTasks.env)
  )
end

load 'active_record/railties/databases.rake'
