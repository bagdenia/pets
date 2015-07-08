class RemoveKindFromPets < ActiveRecord::Migration
  def change
    if column_exists? :pets, :kind
      remove_column :pets, :kind
    end
  end
end
