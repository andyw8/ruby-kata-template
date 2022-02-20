require "active_support"
require "active_support/test_case"
require "debug"
require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!([Minitest::Reporters::DefaultReporter.new(color: true)])
