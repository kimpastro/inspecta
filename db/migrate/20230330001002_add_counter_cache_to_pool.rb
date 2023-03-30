class AddCounterCacheToPool < ActiveRecord::Migration[7.0]
  def change
    add_column :pools, :pulses_count, :integer, default: 0, null: false
  end
end
