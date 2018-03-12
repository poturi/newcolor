class CreateCompaniesInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :companies_infos do |t|
      t.string :company_name, :limit => 200, null: false
      t.references :users_info, null: false, foreign_key: true
      t.references :job_m, null: false, foreign_key: true
      t.integer :is_deleted, :limit => 1, null: false, :default => 0
      t.text :url

      t.timestamps
    end
  end
end
