class RemoveActiveAdmin < ActiveRecord::Migration
  def up
    drop_table :admin_users
    drop_table :active_admin_comments
  end

  def down
    create_table :admin_users
    create_table :active_admin_comments
  end
end
