class Event < ActiveRecord::Base
  validates :title, :description, :start_date, :end_date, :location, :event_type, presence: :true
  validates_format_of :link, :with => /\A(http(s?):\/\/www.){1}.+(.com){1}/, :message => "The link is invalid."

  TYPES = %w(Event Workshop).freeze

  dragonfly_accessor :image

  def readable_event_type
    Event::TYPES[event_type].camelcase
  end
end
