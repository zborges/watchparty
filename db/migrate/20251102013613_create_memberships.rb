class CreateMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :memberships do |t|
      t.bigint :id
      t.bigint :user_id
      t.bigint :group_id

      t.timestamps
    end
  end
end
