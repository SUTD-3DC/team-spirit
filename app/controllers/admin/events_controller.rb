class Admin::EventsController < ApplicationController
  before_action :require_login

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      Log.create(action: "Event of ID = #{Event.last.id} has been created by #{current_user.email}.")
      redirect_to signed_in_root_path, notice: 'The event has been successfully created!'
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.delete
    Log.create(action: "#{@event.title} previously of ID = #{params[:id]} has been removed by #{current_user.email}.")
    redirect_to signed_in_root_path, alert: 'The event has been successfully deleted.'
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date, :image_url, :location, :event_type, :link)
  end
end
