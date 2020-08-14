class AddColumnBeats < ActiveRecord::Migration[6.0]
  def change
    add_column :beats, :url, :text
  end
end
