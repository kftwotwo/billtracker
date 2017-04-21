class CreateFrequencies < ActiveRecord::Migration[5.0]
  def change
    create_table :frequencies do |t|
      t.integer :bill_id
      t.string :weekly
      t.string :bi_weekly
      t.string :tri_weekly
      t.string :monthly

      t.timestamps
    end
  end
end
