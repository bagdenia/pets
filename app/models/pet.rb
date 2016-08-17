class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :kind
  # accepts_nested_attributes_for :kind
  has_many :images

  belongs_to :default_image, foreign_key: :pet_image_id,
                             class_name: Pet::Image

  validates :kind, :name, presence: true
end
