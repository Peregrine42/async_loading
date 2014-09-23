ENV['RACK_ENV'] = 'test'

require 'capybara'
require 'capybara/cucumber'
require 'sidekiq/testing'
require 'rspec'
require 'capybara/poltergeist'

require_relative '../../app'

Capybara.app = App

class AppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  AppWorld.new
end

ActiveRecord::Base.logger = nil

DatabaseCleaner.strategy = :truncation
Before do
  DatabaseCleaner.clean
end

Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {debug: false})
end

Capybara.javascript_driver = :poltergeist
