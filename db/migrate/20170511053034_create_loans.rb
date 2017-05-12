class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :account_id
      t.float :interest
      t.float :amount

      t.timestamps
    end
  end
end
