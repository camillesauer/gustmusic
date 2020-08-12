class CreateRaps < ActiveRecord::Migration[6.0]
  def change
    create_table :raps do |t|

      t.timestamps
    end
  end
end
