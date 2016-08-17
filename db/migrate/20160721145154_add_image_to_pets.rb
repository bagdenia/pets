class AddImageToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :pet_image, index: true, foreign_key: true
  end
end
