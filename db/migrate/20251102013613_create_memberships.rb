class CreateMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :memberships, id: :bigint do |t|
      t.bigint :user_id
      t.bigint :group_id

      t.timestamps
    end
  end
end
