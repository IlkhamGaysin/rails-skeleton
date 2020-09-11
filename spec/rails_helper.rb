ENV['RAILS_ENV'] ||= 'test'

if ENV['CI']
  require 'simplecov'

  SimpleCov.start('rails') do
    command_name "from_container_#{ENV.fetch('CIRCLE_NODE_INDEX', '')}"
    add_filter %w[bundle spec bin config public vendor tmp lib/templates lib/tasks log db]
    coverage_dir ENV.fetch('COVERAGE_DIR', '.coverage')
  end
end

require 'spec_helper'
require File.expand_path('../config/environment', __dir__)
require 'capybara/rails'
require 'rspec/rails'
require 'shoulda/matchers'

Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
