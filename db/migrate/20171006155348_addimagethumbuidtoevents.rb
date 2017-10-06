class Addimagethumbuidtoevents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :image_thumb_uid, :string
  end
end
