class CreatePositionMs < ActiveRecord::Migration[5.0]
  def change
    create_table :position_ms do |t|
      t.string :position_name
      t.integer :is_deleted

      t.timestamps
    end
  end
end
