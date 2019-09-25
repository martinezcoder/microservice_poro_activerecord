# Require gems listed in Gemfile.lock
ENV['BUNDLE_GEMFILE'] ||= File.expand_path("../Gemfile", __dir__)
require 'bundler/setup'
Bundler.require(:default)

# Add the lib folder to LOAD_PATH so we can require any files
$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
