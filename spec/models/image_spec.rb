require 'rails_helper'

RSpec.describe Pet::Image, type: :model do
  it { should belong_to :pet}
end
