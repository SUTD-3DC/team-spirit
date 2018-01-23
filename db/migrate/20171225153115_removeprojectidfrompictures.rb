class Removeprojectidfrompictures < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :project_id
  end
end
