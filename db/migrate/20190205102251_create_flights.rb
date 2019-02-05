class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :f_no
      t.text :date
      t.text :origin
      t.text :destination
      t.references :plane, foreign_key: true

      t.timestamps
    end
    add_index :flights, :f_no, unique: true
  end
end
