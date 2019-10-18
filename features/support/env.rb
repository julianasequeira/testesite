require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'
require 'pry'
require 'rspec'

BROWSER ||= ENV['BROWSER'].to_sym
ENVIRONMENT ||= ENV['ENVIRONMENT'].to_sym

CONFIG_UI = YAML.load_file(File.dirname(__FILE__) +
            "/env/#{ENVIRONMENT}.yml")

main_url = 'http://automationpractice.com'

URL = "#{main_url}".freeze

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[
      --ignore-certificate-errors
      --disable-popup-blocking
      --disable-translate
      --start-maximized
    ]
  )

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = BROWSER
  config.app_host = URL
end

Capybara.default_max_wait_time = 30

SitePrism.configure do |config|
  config.use_implicit_waits = true
end
