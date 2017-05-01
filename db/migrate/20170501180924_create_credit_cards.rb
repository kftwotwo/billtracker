class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :user_id
      t.integer :account_id
      t.integer :company_id

      t.string :name_on_card
      t.string :card_number
      t.date :expiration_date_month
      t.date :expiration_date_year
      t.string :cvv
      t.float :amount
    end
  end
end
