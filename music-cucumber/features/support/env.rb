require 'capybara'
require 'capybara/cucumber'
require 'capybara/mechanize'
require 'cucumber/formatter/unicode'
require 'rspec/expectations'
require 'rest-client'

require File.join(File.dirname(__FILE__), 'music_client')

Music::HOST = 'http://localhost:3000'

Capybara.run_server = false
Capybara.app_host = Music::HOST
Capybara.default_selector = :css
Capybara.default_driver = :mechanize

if ENV['DEBUG']
  RestClient.log = Logger.new(STDOUT)
else
  RestClient.log = Logger.new("log/cucumber.log", 10, 1024000)
end

Before do
  Music.destroy_all_users
end
