class CreateWatchlists < ActiveRecord::Migration
  def change
    create_table :watchlists do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
