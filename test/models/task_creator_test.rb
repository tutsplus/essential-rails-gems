require "test_helper"
require_relative File.expand_path("app/lib/task_creator.rb", Rails.root)

class TaskCreatorTest < MiniTest::Test
  def test_cannot_create_task_on_overdue_project
    project = create :project, ends_at: 1.day.from_now

    task_creator = TaskCreator.new
    Timecop.travel 1.week.from_now
    refute task_creator.execute(project, { title: "My First Task" }), "Expected to the task not being created."
  end
end
