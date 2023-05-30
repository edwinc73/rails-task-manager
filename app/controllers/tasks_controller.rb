class TasksController < ApplicationController
  def show_all
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to "/tasks/#{@task.id}"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
