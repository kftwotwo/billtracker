class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :account_id
      t.integer :bill_id
      t.integer :company_id
      t.float :amount

      t.timestamps
    end
  end
end
