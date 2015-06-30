class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :kind
  has_many :images
end
