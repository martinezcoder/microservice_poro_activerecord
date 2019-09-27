ENV['BUNDLE_GEMFILE'] ||= File.expand_path("../../Gemfile", __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile

# Require gems listed in Gemfile.lock
Bundler.require(:default)

# Add the lib folder to LOAD_PATH so we can require any files
$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

