class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    if params[:section_id] && params[:project_id]
      @project = Project.find(params[:project_id])
      @section = Section.find(params[:section_id])
      @task = @section.tasks.build(task_params)
    else
      @task = Task.new(task_params)
    end

    if @task.save
      redirect_to request.referer, notice: "Task created"
    else
      redirect_to request.referer, alert: "Something went wrong"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to request.referer, notice: "Task updated"
    else
      redirect_to request.referer, alert: "Something went wrong"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to request.referer, notice: "Task deleted"
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :status, :due_date, :project_id, :section_id)
  end
end
