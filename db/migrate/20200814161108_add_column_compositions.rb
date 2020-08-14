class AddColumnCompositions < ActiveRecord::Migration[6.0]
  def change
    add_column :compositions, :url, :text
  end
end
