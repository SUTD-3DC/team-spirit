class Admin::EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to signed_in_root_path, notice: 'The event has been successfully created!'
    else
      render :new
    end
  end

  def delete
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date, :image_url, :location, :event_type)
  end
end
