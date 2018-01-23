class Event < ActiveRecord::Base
  before_validation :check_link_heading
  validates :title, :description, :start_date, :end_date, :location, :event_type, :link, presence: :true
  validates_format_of :link, with: /\A(http(s?):\/\/www.){1}.+(.com){1}/, message: "The link is invalid.", allow_blank: :true
  has_one :picture, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :picture, reject_if: :all_blank, allow_destroy: true

  TYPES = %w(Event Workshop).freeze

  def check_link_heading
    if !self.link.empty?
      self.link.strip!
      if !self.link.match(/\A(http:\/\/)/)
        append
      end
    end
  end

  def append
      self.link = "http://" + self.link
  end

  def readable_event_type
    Event::TYPES[event_type].camelcase
  end
end
