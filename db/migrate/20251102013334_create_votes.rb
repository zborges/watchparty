class CreateVotes < ActiveRecord::Migration[7.2]
  def change
    create_table :votes,  id: :bigint do |t|
      t.bigint :user_id
      t.bigint :watchlist_id
      t.integer :score

      t.timestamps
    end
  end
end
