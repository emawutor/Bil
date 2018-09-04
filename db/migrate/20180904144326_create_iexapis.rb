class CreateIexapis < ActiveRecord::Migration[5.2]
  def change
    create_table :iexapis do |t|

      t.timestamps
    end
  end
end
