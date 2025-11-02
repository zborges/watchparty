class CreateGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :groups, id: :bigint do |t|
      t.string :name
      t.bigint :creator_id

      t.timestamps
    end
  end
end
