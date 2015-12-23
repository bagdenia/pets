class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :kind
  # accepts_nested_attributes_for :kind
  has_many :images

  validates :kind, :name, presence: true
end
