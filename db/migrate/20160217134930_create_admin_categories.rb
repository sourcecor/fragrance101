class CreateAdminCategories < ActiveRecord::Migration
  def change
    create_table :admin_categories do |t|
      t.integer :parent_id
      t.string :caption
      t.string :description
      t.integer :seq
      t.timestamps null: false
    end
  end
end
