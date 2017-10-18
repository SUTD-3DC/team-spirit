class Changestarttimecolumnnametostartdate < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :start_time, :start_date
  end
end
