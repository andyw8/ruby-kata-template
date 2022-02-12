require "minitest/autorun"
require "minitest/reporters"
require "pry"

Minitest::Reporters.use!([Minitest::Reporters::DefaultReporter.new(color: true)])
