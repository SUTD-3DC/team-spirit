class Event < ActiveRecord::Base
  validates :title, :description, :start_date, :end_date, :location, :event_type, presence: :true

  TYPES = %w(Event Workshop).freeze

  def readable_event_type
    Event::TYPES[event_type].camelcase
  end
end
