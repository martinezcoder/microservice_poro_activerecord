require File.expand_path('../../config/boot', __FILE__)
require File.expand_path('../../config/config', __FILE__)

require 'app/models/pet'

module App
  def self.config
    Config.instance
  end
end

ActiveRecord::Base.establish_connection(App.config.database)

