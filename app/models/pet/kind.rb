class Pet
  class Kind < ActiveRecord::Base
    has_many :pets
    validates :name, presence: true
    validates :name, uniqueness: true

  end
end
