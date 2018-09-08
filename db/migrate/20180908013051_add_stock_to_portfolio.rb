class AddStockToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_reference :portfolios, :stock, foreign_key: true
  end
end
