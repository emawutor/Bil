class DropIexapis < ActiveRecord::Migration[5.2]
  def change
    drop_table :iexapis
  end
end
