class Addimageuidtoevents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :image_uid, :string
  end
end
