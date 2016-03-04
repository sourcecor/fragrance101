class CreateAdminGroupsUsers < ActiveRecord::Migration
  def change
    create_table :admin_groups_users, id: false do |t|
      t.integer :group_id
      t.integer :user_id
      t.timestamps null: false
    end

    add_index :admin_groups_users, :group_id
    add_index :admin_groups_users, :user_id
  end
end
