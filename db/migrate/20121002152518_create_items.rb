class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.string :serial
      t.string :kind
      t.datetime :purchaseDate
      t.datetime :retireDate
      t.string :backup
      t.string :os
      t.references :user

      t.timestamps
    end
    add_index :items, :user_id
  end
end
