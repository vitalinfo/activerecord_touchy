require 'bundler/setup'
require 'activerecord_touchy'

Dir[File.join(File.expand_path('../support', __FILE__), '**', '*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
    c.on_potential_false_positives = :nothing
  end
  config.warnings = true
  config.order = :random
end
