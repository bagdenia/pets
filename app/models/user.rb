class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pets

  has_and_belongs_to_many :acceptable_pets, class_name: 'Pet::Kind',
    join_table: 'accepted_pet_kinds', association_foreign_key: 'pet_kind_id'
end
