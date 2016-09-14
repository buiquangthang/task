class TasksController < ApplicationController
  before_action :set_project
  def create
    @task = @project.task.create(task_params)
    redirect_to @project
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def tasj_params
    parasm[:task],permit(content)
  end
end
