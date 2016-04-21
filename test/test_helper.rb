ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'minitest/autorun'

class ActiveSupport::TestCase
  extend MiniTest::Spec::DSL
  
  # Add more helper methods to be used by all tests here...
end
