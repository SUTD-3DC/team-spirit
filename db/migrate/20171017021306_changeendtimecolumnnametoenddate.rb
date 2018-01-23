class Changeendtimecolumnnametoenddate < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :end_time, :end_date
  end
end
