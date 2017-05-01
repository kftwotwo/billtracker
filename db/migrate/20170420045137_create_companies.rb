class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :name
      t.string :website

    end
  end
end
