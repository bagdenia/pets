class Pet
  class Image < ActiveRecord::Base
    belongs_to :pet
    mount_uploader :image
  end
end
