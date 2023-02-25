class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.references :pool, null: false, foreign_key: true
      t.string :http_method, limit: 20
      t.jsonb :headers
      t.string :query_string
      t.string :content_type
      t.integer :size, default: 0
      t.jsonb :form_params
      t.text :body
      t.string :ip

      t.timestamps
    end
  end
end
