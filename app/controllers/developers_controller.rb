class DevelopersController < ApplicationController
  def index
    project = Project.find(params[:project_id])
    @developers = project.developer.all
  end

  def create
    @project = Project.find(params[:project_id])
    @developer = @project.developers.new(params[:developer])
    if @developer.save
      redirect_to project_path(@project.id)
    else 
      render 'new'
    end
  end

  def new
    @project = Project.find(params[:project_id])
    @developer = @project.developers.new
  end

  def destroy
  end

  def show
    @developer=Developer.find(params[:id])

  end

  def update
  end

  def edit
  end
end
