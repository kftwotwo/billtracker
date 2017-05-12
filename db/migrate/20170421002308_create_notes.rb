class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :company_id
      t.integer :credit_card_id
      t.integer :debit_card_id
      t.integer :loan_id

      t.text :entry
    end
  end
end
