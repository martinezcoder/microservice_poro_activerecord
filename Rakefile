require File.expand_path('../lib/app', __FILE__)

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

DatabaseTasks.root = __dir__
DatabaseTasks.env = App.config.env
DatabaseTasks.db_dir = App.config.db_dir
DatabaseTasks.migrations_paths = App.config.migrations_path
DatabaseTasks.database_configuration = App.config.database_configuration

task :environment do
  ActiveRecord::Base.establish_connection(
    DatabaseTasks.database_configuration.fetch(DatabaseTasks.env)
  )
end

load 'active_record/railties/databases.rake'
