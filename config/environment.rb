# require code from the Gemfile.lock
ENV['BUNDLE_GEMFILE'] ||= File.expand_path("../Gemfile", __dir__)
require 'bundler/setup'
Bundler.require(:default)

# Add to LOAD_PATH list the lib folder to enable require any files
$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
