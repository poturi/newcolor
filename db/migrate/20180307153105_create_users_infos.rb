class CreateUsersInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :users_infos do |t|
      t.string :password
      t.string :user_name
      t.references :job_m, foreign_key: true
      t.references :position_m, foreign_key: true
      t.integer :age
      t.integer :is_deleted
      t.text :address
      t.string :version

      t.timestamps
    end
  end
end
