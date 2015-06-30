class CreatePetType < ActiveRecord::Migration
  def change
    create_table :pet_kinds do |t|
      t.string :name
      t.timestamps
    end

    add_column :pets, :kind_id, :integer
    add_foreign_key :pets, :pet_kinds, column: 'kind_id'
  end
end
