class CreateAdminGroupsMenus < ActiveRecord::Migration
  def change
    create_table :admin_groups_menus, id: false do |t|
      t.integer :group_id
      t.integer :menu_id
      t.timestamps null: false
    end

    add_index :admin_groups_menus, :group_id
    add_index :admin_groups_menus, :menu_id
  end
end
