class DashboardController < ApplicationController
  before_action :require_login

  def index
    @events = Event.where(event_type: 0)
    @workshops = Event.where(event_type: 1)
  end
end
