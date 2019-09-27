require File.expand_path('../lib/app', __FILE__)

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

config = Config.instance

DatabaseTasks.root = __dir__
DatabaseTasks.env = config.env
DatabaseTasks.db_dir = config.db_dir
DatabaseTasks.migrations_paths = config.migrations_path
DatabaseTasks.database_configuration = config.database_configuration

# Seeds needs special treatment for its configuration
class Seeder
  def initialize(seed_file)
    @seed_file = seed_file
  end

  def load_seed
    raise "Seed file '#{@seed_file}' does not exist" unless File.file?(@seed_file)
    load @seed_file
  end
end
DatabaseTasks.seed_loader = Seeder.new(File.join(__dir__, 'db/seeds.rb'))

task :environment do
  ActiveRecord::Base.establish_connection(
    DatabaseTasks.database_configuration.fetch(DatabaseTasks.env)
  )
end

load 'active_record/railties/databases.rake'
