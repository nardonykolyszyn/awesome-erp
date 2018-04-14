class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update]

  def index
    @tasks = Task.all
  end

  def show
  end


  def edit
  end
 
  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      redirect_to tasks_path, notice: 'Todo has been added'
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:start_at, :end_at, :name, :photo, :priority, :description)
  end
end
