class CreateCompaniesInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :companies_infos do |t|
      t.string :company_name
      t.references :users_info, foreign_key: true
      t.references :Job_m, foreign_key: true
      t.integer :is_deleted, null: false
      t.text :url

      t.timestamps
    end
  end
end
