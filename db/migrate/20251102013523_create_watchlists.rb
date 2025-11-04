class CreateWatchlists < ActiveRecord::Migration[7.2]
  def change
    create_table :watchlists do |t|
      t.references :group, null: false, foreign_key: true

      t.boolean :is_decision_made, default: false, null: false
      t.jsonb :metadata, default: {}, null: false
      t.string :tmdb_id, null: false

      t.timestamps
    end
  end
end
