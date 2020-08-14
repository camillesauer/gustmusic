class AddColumnRaps < ActiveRecord::Migration[6.0]
  def change
    add_column :raps, :url, :text
  end
end
