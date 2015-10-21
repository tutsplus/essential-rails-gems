class TaskCreator
  def execute project, task_params
    if project.ends_at > Time.now
      project.tasks.create! task_params
      return true
    else
      return false
    end
  end
end
