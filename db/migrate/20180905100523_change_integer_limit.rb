class ChangeIntegerLimit < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :market_cap, :integer, limit: 8
  end
end
