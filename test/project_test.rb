require "test_helper"
require "project"

class ProjectTest < ActiveSupport::TestCase
  test "example" do
    p = stub("project")
    Project.new
    assert true, "Example passes, tests are executing correctly"
  end
end
