require "cucumber"
require "selenium-webdriver"
require "rspec"
require "capybara/Cucumber"

Capybara.default_driver = :selenium_chrome
Capybara.app_host = "https://www.google.com.br"