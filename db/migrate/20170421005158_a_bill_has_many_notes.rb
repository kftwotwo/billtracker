class ABillHasManyNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :bill_id, :integer
  end
end
