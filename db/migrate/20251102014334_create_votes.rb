class CreateVotes < ActiveRecord::Migration[7.2]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :watchlist, null: false, foreign_key: true

      t.integer :score, null: false
      t.text :comment

      t.timestamps
    end

    add_index :votes, [:user_id, :watchlist_id], unique: true
  end
end
