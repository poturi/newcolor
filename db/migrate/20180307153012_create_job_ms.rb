class CreateJobMs < ActiveRecord::Migration[5.0]
  def change
    create_table :job_ms do |t|
      t.string :job_name
      t.integer :is_deleted

      t.timestamps
    end
  end
end
