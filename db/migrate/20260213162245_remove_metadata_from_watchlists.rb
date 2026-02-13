class RemoveMetadataFromWatchlists < ActiveRecord::Migration[7.2]
  def change
    remove_column :watchlists, :metadata, :jsonb
  end
end
