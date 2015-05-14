class CreatePetsImages < ActiveRecord::Migration
  def change
    create_table :pet_images do |t|
      t.belongs_to :pet, index: true, null: false
      t.string :image
      t.string :title
      t.boolean :visible
      t.integer :position
    end
    add_foreign_key :pet_images, :pets
  end
end
