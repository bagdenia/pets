class CreateAcceptedPetKinds < ActiveRecord::Migration
  def change
    # create_table :accepted_pet_kinds do |t|
    #   t.belongs_to :pet_kind, index: true
    #   t.belongs_to :user, index: true
    # end
    # add_foreign_key :accepted_pet_kinds, :pet_kinds
    # add_foreign_key :accepted_pet_kinds, :users

    create_join_table :pet_kinds, :users, table_name: 'accepted_pet_kinds ' do |t|
      t.index [:user_id, :pet_kind_id], unique: true
    end
  end
end
