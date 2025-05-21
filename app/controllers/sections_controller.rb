class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @project = Project.find(params[:project_id])
    @section = @project.sections.build(section_params)
    if @section.save
      redirect_to project_path(@project), notice: "Section created"
    else
      render "projects/show", status: :unprocessable_entity
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
      redirect_to @section, notice: "Section updated"
    elsif
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_path, notice: "Section deleted"
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end
end
