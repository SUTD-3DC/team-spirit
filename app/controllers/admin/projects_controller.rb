class Admin::ProjectsController < ApplicationController
  before_action :require_login

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.valid?
      @project.save
      Log.create(action: "Project of ID = #{Project.last.id} has been created by #{current_user.email}.")
      redirect_to signed_in_root_path, notice: 'The project has been successfully created!'
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.delete
    Log.create(action: "#{@project.title} previously of ID = #{params[:id]} has been removed by #{current_user.email}.")
    redirect_to signed_in_root_path, alert: 'The project has been successfully deleted.'
  end

  private

    def project_params
      params.require(:project).permit(:title, :description, :start_time, :end_time)
    end
end
