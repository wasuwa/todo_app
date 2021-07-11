class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_url
    else
      render root_path
    end
  end

  def destroy

  end

  private

    def task_params
      params.require(:task).permit(:title, :description)
    end
end
