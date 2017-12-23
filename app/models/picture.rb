class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true


  dragonfly_accessor :image do
    copy_to(:image_thumb){|a| a.thumb('250x250') }
  end

  dragonfly_accessor :image_thumb

end
