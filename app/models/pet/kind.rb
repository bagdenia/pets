class Pet
  class Kind < ActiveRecord::Base
    has_many :pets

  end
end
