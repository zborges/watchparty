class CreateWatchlists < ActiveRecord::Migration[7.2]
  def change
    create_table :watchlists,  id: :bigint do |t|
      t.bigint :group_id
      t.boolean :is_decision_made
      t.jsonb :metadata
      t.string :tmdb_id

      t.timestamps
    end
  end
end
