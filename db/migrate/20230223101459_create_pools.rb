class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.string :identifier, index: true, null: false, unique: true
      t.integer :quantity, default: 500, null: false

      t.timestamps
    end
  end
end
