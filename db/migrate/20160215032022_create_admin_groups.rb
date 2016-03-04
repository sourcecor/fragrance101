class CreateAdminGroups < ActiveRecord::Migration
  def change
    create_table :admin_groups do |t|
      t.string :caption

      t.timestamps null: false
    end
  end
end
