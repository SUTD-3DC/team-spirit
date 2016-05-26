class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :image_url
      t.string :location
      t.string :type

      t.timestamps null: false
    end
  end
end
