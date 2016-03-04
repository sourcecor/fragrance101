class AddSelfJoinToMenus < ActiveRecord::Migration
  def change
    change_table :admin_menus do |t|
      t.references :parent_id
    end
  end
end
