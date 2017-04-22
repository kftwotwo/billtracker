class AddAccountIdToBillsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :account_id, :string
  end
end
