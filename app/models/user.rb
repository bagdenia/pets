class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :uname, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pets
  has_many :messages, foreign_key: 'receiver_id'

  has_and_belongs_to_many :acceptable_pets, class_name: 'Pet::Kind',
    join_table: 'accepted_pet_kinds', association_foreign_key: 'pet_kind_id'

  def self.[] email_or_name
    candidates = where('email ILIKE ?', "%#{email_or_name}%")
    if candidates.size > 1
      raise "Many people found: #{candidates.map(&:email).to_sentence}"
    else candidates.first
    end
  end
end
