class CreateAdminProductProfilePictures < ActiveRecord::Migration
  def change
    create_table :admin_product_profile_pictures do |t|
      t.string :image
      t.belongs_to :product
      t.integer :seq
      t.timestamps null: false
    end
  end
end
