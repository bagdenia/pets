class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.string :gender

      t.timestamps null: false
    end
  end
end
