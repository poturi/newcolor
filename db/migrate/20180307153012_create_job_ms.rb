class CreateJobMs < ActiveRecord::Migration[5.0]
  def change
    create_table :job_ms do |t|
      t.string :job_name, :limit => 50, null: false
      t.integer :is_deleted, :limit => 1, null: false, :default => 0

      t.timestamps
    end
  end
end
