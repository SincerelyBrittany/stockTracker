class CreateWatchlistStocks < ActiveRecord::Migration
  def change
    create_table :watchlist_stocks do |t|
      t.integer :watchlist_id
      t.integer :stock_id
    end
  end
end
