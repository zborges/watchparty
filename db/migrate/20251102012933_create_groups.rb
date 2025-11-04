class CreateGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.bigint :creator_id, null: false

      t.timestamps
    end

    add_foreign_key :groups, :users, column: :creator_id
  end
end
