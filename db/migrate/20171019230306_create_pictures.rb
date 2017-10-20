class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image_uid
      t.string :image_thumb_uid
      t.belongs_to :project, foreign_key: true, index: true

      t.timestamps
    end
  end
end
