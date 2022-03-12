require "active_support"
require "active_support/test_case"
require "debug"
require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!([Minitest::Reporters::DefaultReporter.new(color: true)])

module ActiveSupport
  class TestCase
    make_my_diffs_pretty!
  end
end
