require 'pry'
require 'rspec'
require_relative '../capybara_helper.rb'

settings_hash = YAML.safe_load(File.read('spec/settings.yaml'))

Capybara.default_driver = CapybaraHelper.select_driver(settings_hash['browser'])

RSpec.configure do |config|
  config.add_formatter('documentation')

  config.after(:each) do
    Capybara.page.instance_variable_set(:@touched, false)
  end
end
