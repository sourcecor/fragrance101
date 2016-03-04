class CreateAdminSubProducts < ActiveRecord::Migration
  def change
    create_table :admin_sub_products do |t|
      t.string :size
      t.string :color
      t.integer :qty
      t.string :itemcode
      t.integer :seq
      t.references :admin_products, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
