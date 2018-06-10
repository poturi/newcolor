class CreateUsersInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :users_infos do |t|
      t.string :user_name, :limit => 20, null: false
      t.references :job_m, foreign_key: true
      t.references :position_m, foreign_key: true
      t.integer :age, :limit => 1, null: false
      t.integer :is_deleted, :limit => 1, null: false, :default => 0
      t.text :address, :limit => 320, null: false
      t.string :version, :limit => 5, :default => 1
      t.string :password_digest,  null: false

      t.timestamps
    end
  end
end
