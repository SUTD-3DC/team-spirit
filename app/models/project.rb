class Project <  ActiveRecord::Base
  before_validation :check_link_heading
  validates :title, :description, :start_date, :end_date, :link, presence: :true
  validates_format_of :link, with: /\A(http(s?):\/\/www.){1}.+(.com){1}/, message: "The link is invalid.", allow_blank: :true
  has_many :pictures, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true

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

end
