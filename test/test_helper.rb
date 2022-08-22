ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  # Devise test helpers
  include Warden::Test::Helpers
  Warden.test_mode!
end

# Folder path for screeshots
Capybara.save_path = Rails.root.join("tmp/capybara")
# set up headless chrome which will not use the chrome part of chrome
# Capybara.javascript_driver = :headless_chrome
