class CreateAdminUserMenuView < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW admin_menus_users AS
        select a.group_id, a.user_id, b.menu_id, parent_id, caption, "action", position, seq
        from admin_groups_users a 
        inner join admin_groups_menus b on a.group_id = b.group_id
        inner join admin_menus c on b.menu_id = c.id
        order by a.group_id, seq
    SQL
  end

  def down
    execute "DROP VIEW admin_menus_users"
  end
end
