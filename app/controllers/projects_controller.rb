class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @sections = @project.sections
    @section = Section.new
    @task = Task.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to request.referer, notice: "Project created"
    else
      redirect_to request.referer, alert: "Something went wrong"
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to request.referer, notice: "Project updated"
    else
      redirect_to request.referer, alert: "Something went wrong"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to request.referer, notice: "Project deleted"
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
