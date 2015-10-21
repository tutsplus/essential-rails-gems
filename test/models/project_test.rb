require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  it "creates a project" do
    Project.create! name: "My First Project"
    Project.count.must_equal 1
  end

  def test_spawns_one_project
    create :project, name: "Another Project Name"
    assert_equal 1, Project.count
  end

  def test_spawns_tasks_with_project
    project = create :project_with_tasks
    puts project.tasks.map(&:title)

    assert_equal 5, Task.count
  end
end
