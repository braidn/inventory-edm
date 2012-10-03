class RenameUsersActiveColumnToStatus < ActiveRecord::Migration
  def up
    remove_column :users, :active
    add_column :users, :status, :string
  end

  def down
  end
end
