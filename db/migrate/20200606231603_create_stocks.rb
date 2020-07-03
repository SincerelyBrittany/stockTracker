class CreateStocks < ActiveRecord::Migration[4.2]
  def change
    create_table :stocks do |t|
    t.string :ticker
    t.string :name
    t.string :description
    t.string :ceo
    t.string :logo
    t.integer :price
    t.timestamps
    end
  end
end
