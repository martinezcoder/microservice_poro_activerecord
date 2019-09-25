# require code from the Gemfile.lock
ENV['BUNDLE_GEMFILE'] ||= File.expand_path("Gemfile", __dir__)
require 'bundler/setup'
Bundler.require(:default, "development")

class Hello
  def hi
    binding.pry
    puts "hi man"
  end
end

