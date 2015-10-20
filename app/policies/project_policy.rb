class ProjectPolicy
  attr_reader :user, :project

  def initialize user, project
    @user = user
    @project = project
  end

  def edit?
    user.email =~ /tutsplus/
    #project.user == user
  end
end
