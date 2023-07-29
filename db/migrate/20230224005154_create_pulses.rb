class CreatePulses < ActiveRecord::Migration[7.0]
  def change
    create_table :pulses do |t|
      t.references :pool, null: false, foreign_key: true
      t.string :http_method, limit: 20
      t.string :headers
      t.string :query_string
      t.string :content_type
      t.integer :size, default: 0
      t.string :form_params
      t.text :body
      t.string :ip

      t.timestamps
    end
  end
end
