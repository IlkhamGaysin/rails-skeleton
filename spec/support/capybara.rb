Capybara.register_driver :custom_selenium_chrome_headless do |app|
  Capybara::Selenium::Driver.load_selenium

  browser_options = ::Selenium::WebDriver::Chrome::Options.new(read_timeout: 2.minutes)

  File.open(Rails.root.join('config/.chromeheadlessrc.yml')) do |file|
    YAML.safe_load(file.read).each do |option|
      browser_options.args << option
    end
  end

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

Capybara.configure do |config|
  config.match = :prefer_exact
  config.server_port = 3001
  config.server_host = 'localhost'
  config.asset_host = "http://#{config.server_host}:#{config.server_port}"
  config.javascript_driver = :custom_selenium_chrome_headless
  config.visible_text_only = true
  config.ignore_hidden_elements = true
  config.server = :puma, { Silent: false }
end
