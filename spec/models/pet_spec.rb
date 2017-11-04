require 'rails_helper'

RSpec.describe Pet, type: :model do
  it { should validate_presence_of :name}
  it { should validate_presence_of :kind}
  it { should have_many :images}
  it { should belong_to :user}
  it { should belong_to :kind}
  it { should belong_to :default_image}
end

