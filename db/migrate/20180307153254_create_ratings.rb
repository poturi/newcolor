class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :companies_info, foreign_key: true
      t.references :users_info, null: false, foreign_key: true
      t.integer :money, :limit => 1
      t.integer :skill, :limit => 1
      t.integer :work, :limit => 1
      t.integer :age, :limit => 1
      t.integer :is_deleted ,:limit => 1

      t.timestamps
    end
  end
end
