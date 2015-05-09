class AddRefToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :user, index: true, required: true
    add_foreign_key :pets, :users
  end
end
