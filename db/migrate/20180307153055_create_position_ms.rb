class CreatePositionMs < ActiveRecord::Migration[5.0]
  def change
    create_table :position_ms do |t|
      t.string :position_name, :limit => 25, null: false
      t.integer :is_deleted, :limit => 1, null: false, :default => 0

      t.timestamps
    end
  end
end
