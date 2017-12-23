class Removeimageuidfromevents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :image_uid
  end
end
