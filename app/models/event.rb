class Event < ActiveRecord::Base
  validates :title, :description, :start_date, :end_date, :location, :event_type, presence: :true
end
