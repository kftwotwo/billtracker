class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.text :name
      t.date :next_due_date
      t.float :amount
      t.string :account_number
      t.integer :company_id
      t.integer :user_id

      t.timestamps
    end
  end
end
