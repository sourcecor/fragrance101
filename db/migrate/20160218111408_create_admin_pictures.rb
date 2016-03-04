class CreateAdminPictures < ActiveRecord::Migration
  def change
    create_table :admin_pictures do |t|
      t.string :image
      t.integer :seq
      t.references :imageable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
