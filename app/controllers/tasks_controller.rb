class TasksController < ApplicationController
  def index
    @task = Task.paginate(:page => params[:page], :per_page=>7)
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def destroy
    @task.destroy
  end

  private
  def task_params
    params.permit(:body)
  end
end
