require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_uniqueness_of :uname}
  it { should have_many :pets}
  it { should have_many :messages}
  it { should have_and_belong_to_many :acceptable_pets}
end
