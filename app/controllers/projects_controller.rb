class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project_params = params.require(:project).permit(:title, :descriptioins, :website_url, :github_url, :project_img)

    project = Project.new(project_params)

    if project.save
      redirect_to project_path
    end
  end

  def show
    project_id = params[:id]
    @project = Project.find_by_id(project_id)
  end

end
