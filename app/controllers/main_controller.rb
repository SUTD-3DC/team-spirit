class MainController < ApplicationController
  def home
    @events = Event.where(event_type: 0)
    @workshops = Event.where(event_type: 1)
    @projects = Project.all
  end
end
