require File.expand_path('../config/boot', __FILE__)

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

config = Config.instance

DatabaseTasks.root = __dir__
DatabaseTasks.env = config.env
DatabaseTasks.db_dir = config.db_dir
DatabaseTasks.migrations_paths = config.migrations_path
DatabaseTasks.database_configuration = config.database_configuration

task :environment do
  ActiveRecord::Base.establish_connection(
    DatabaseTasks.database_configuration.fetch(DatabaseTasks.env)
  )
end

load 'active_record/railties/databases.rake'
