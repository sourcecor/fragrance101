class CreateAdminMenus < ActiveRecord::Migration
  def change
    create_table :admin_menus do |t|
      t.integer :parent_id
      t.string :caption
      t.string :action
      t.integer :seq
      t.string :position
      t.integer :removable 
      t.timestamps null: false
    end
  end
end
