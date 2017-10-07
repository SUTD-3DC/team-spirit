class Event < ActiveRecord::Base
  validates :title, :description, :start_date, :end_date, :location, :event_type, presence: :true
  validates_format_of :link, with: /\A(http(s?):\/\/www.){1}.+(.com){1}/, message: :"The link is invalid.", allow_blank: :true


  TYPES = %w(Event Workshop).freeze

  dragonfly_accessor :image do
    copy_to(:image_thumb){|a| a.thumb('250x250') }
  end

  dragonfly_accessor :image_thumb

  def readable_event_type
    Event::TYPES[event_type].camelcase
  end
end
