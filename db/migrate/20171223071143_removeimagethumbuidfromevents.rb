class Removeimagethumbuidfromevents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :image_thumb_uid
  end
end
