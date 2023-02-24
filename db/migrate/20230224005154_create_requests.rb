class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.references :pool, null: false, foreign_key: true
      t.string :verb
      t.jsonb :headers
      t.string :query_string
      t.jsonb :form_params
      t.text :body
      t.string :host

      t.timestamps
    end
  end
end
