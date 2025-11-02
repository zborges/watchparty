class CreateWatchlists < ActiveRecord::Migration[7.2]
  def change
    create_table :watchlists do |t|
      t.bigint :group_id
      t.boolean :is_decision_made
      t.bigint :id
      t.jsonb :metadata
      t.string :tmdb_id

      t.timestamps
    end
  end
end
