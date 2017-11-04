class Pet
  class Image < ActiveRecord::Base
    belongs_to :pet
    mount_uploader :image, ImageUploader
    validates_integrity_of :image
    # validate :image_size

   private

      # Validates the size of an uploaded picture.
      def image_size
        if image.size > 5.megabytes
          errors.add(:image, "should be less than 1MB")
        end
      end
 end
end
