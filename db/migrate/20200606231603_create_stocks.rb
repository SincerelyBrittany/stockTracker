class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
    t.string :ticker
    t.string :name
    t.string :exchange
    t.string :logo
    t.integer :price
    t.timestamps
    end
  end
end
