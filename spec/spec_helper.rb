# frozen_string_literal: true

require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
SimpleCov.minimum_coverage(100) if !!ENV['FULL_TEST_COVERAGE_CHECK']
SimpleCov.enable_coverage(:branch)
SimpleCov.enable_coverage(:line)
SimpleCov.add_filter('spec')
SimpleCov.start

require 'bundler/setup'
require 'qonfig'
require 'pry'
require 'securerandom'

require_relative 'support/spec_support'
require_relative 'support/meta_scopes'

RSpec.configure do |config|
  config.filter_run_when_matching :focus
  config.order = :random
  config.shared_context_metadata_behavior = :apply_to_host_groups
  Kernel.srand config.seed
  config.expect_with(:rspec) { |c| c.syntax = :expect }
  Thread.abort_on_exception = true
end
