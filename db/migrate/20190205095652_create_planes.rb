class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.text :name
      t.integer :row
      t.integer :col

      t.timestamps
    end
  end
end
