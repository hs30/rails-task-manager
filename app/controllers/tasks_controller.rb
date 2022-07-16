class TasksController < ApplicationController
  def index
    @tasks = Task.all # Task = model. Model is linked to a controller to perform db actions e.g. new, all, find
  end

  def show
    # raise
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    # raise
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
    # raise
    @task = Task.find(params[:id])
  end

  def update
    # raise
    @task = Task.find(params[:id]) # (1) get id
    @task.update(task_params)
    redirect_to task_path(@task) # (2) get id  - @task, params[:id] or task.id all work
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
