class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    if @project.valid?
      redirect_to projects_path, notice: 'Project has been created' if @project.save
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to edit_project_path(@project), notice: 'Project has been edited'
    else
      render :edit
    end
  end

  def destroy

  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :days, galleries_attributes: [:id, :image, :_destroy])
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
