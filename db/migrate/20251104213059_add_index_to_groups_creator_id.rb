class AddIndexToGroupsCreatorId < ActiveRecord::Migration[7.2]
  def change
    add_index :groups, :creator_id
  end
end
