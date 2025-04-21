class HomeController < ApplicationController
  def index
    @tasks = Task.where(project_id: nil, section_id: nil)
    @task = Task.new
  end
end
