class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all.order(created_at: 'DESC')
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = 'タスクを作成しました'
      redirect_to root_url
    else
      @tasks = Task.all.order(created_at: 'DESC')
      render :index
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
  end

  private

    def task_params
      params.require(:task).permit(:title, :goal_at, :description)
    end
end
