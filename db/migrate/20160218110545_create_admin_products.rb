class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.string :caption
      t.text :description
      t.decimal :unit_price, :precision => 8, :scale => 2
      t.decimal :sale_price, :precision => 8, :scale => 2
      t.decimal :cost, :precision => 8, :scale => 2
      t.string :itemcode

      t.timestamps null: false
    end
  end
end
