class DashboardController < ApplicationController
  before_action :require_login

  def index
    @events = Event.all
  end
end
