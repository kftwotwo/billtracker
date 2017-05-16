class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|

      t.string :notable_type
      t.integer :notable_id

      t.text :entry
    end
  end
end
