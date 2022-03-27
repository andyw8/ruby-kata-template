require "active_support"
require "active_support/test_case"
require "pry-byebug"
require "minitest/autorun"
require "minitest/reporters"
require "mocha/minitest"

Minitest::Reporters.use!([Minitest::Reporters::DefaultReporter.new(color: true)])

module ActiveSupport
  class TestCase
    make_my_diffs_pretty!
  end
end

# https://github.com/rubocop/minitest-style-guide/issues/38
Mocha.configure do |c|
  c.stubbing_method_on_nil = :prevent
  c.stubbing_non_existent_method = :prevent
  c.stubbing_non_public_method = :prevent
end
