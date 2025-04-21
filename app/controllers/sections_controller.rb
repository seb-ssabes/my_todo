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
    @section = Section.new(section_params)
    if @section.save
      redirect_to @section, notice: "Section created"
    else
      render :new
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
    params.require(:section).permit(:title, :project_id)
  end
end
