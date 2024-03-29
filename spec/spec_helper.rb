
ENV['GEM_ENV'] = 'test'
require 'rspec/core'
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
require "#{File.dirname(__FILE__)}/../lib/mars_rover"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10

  config.order = :random
  Kernel.srand config.seed
end
