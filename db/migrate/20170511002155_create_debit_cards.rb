class CreateDebitCards < ActiveRecord::Migration[5.0]
  def change
    create_table :debit_cards do |t|
      t.integer :user_id
      t.integer :account_id
      t.integer :company_id
      t.string :name_on_card
      t.integer :card_number
      t.string :expiration_date_month
      t.string :expiration_date_year
      t.float :balance
    end
  end
end
