# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'faker'
require 'report_builder'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

EL = YAML.load_file(File.join(Dir.pwd, './data/elements.yml'))
DATA = YAML.load_file(File.join(Dir.pwd, './data/data.yml'))
