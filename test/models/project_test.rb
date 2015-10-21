require 'test_helper'

class ProjectTest < MiniTest::Test
  def test_creates_a_project
    Project.create! name: "My First Project"
    assert_equal 1, Project.count
  end
end
