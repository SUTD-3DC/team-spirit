class DashboardController < ApplicationController
  before_action :require_login

  def index
    @events = Event.all
    @projects = Project.all
  end
end
