# frozen_string_literal: true

require 'capybara'
require 'capybara/rspec'
require 'pry'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_max_wait_time = 15
  config.ignore_hidden_elements = false
  config.run_server = false
  config.default_selector = :css
  config.save_path = 'spec/support/screenshots'
end

Capybara.register_driver :chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL' })
  capabilities['loggingPrefs'] = { 'performance' => 'ALL' }

  chrome_options = {}
  chrome_options['perfLoggingPrefs'] = { 'enableNetwork' => true, 'enablePage' => true }
  chrome_options['args'] = ['window-size=1600,1400']
  capabilities['chromeOptions'] = chrome_options

  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

module CapybaraHelper
  module_function

  def select_driver(browser)
    case browser
    when 'chrome'
      :chrome
    when 'chrome network'
      :chrome_network
    when 'firefox'
      :firefox
    else
      :chrome
    end
  end
end
