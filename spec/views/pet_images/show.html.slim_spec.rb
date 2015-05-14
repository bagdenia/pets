require 'rails_helper'

RSpec.describe "pet_images/show", type: :view do
  before(:each) do
    @pet_image = assign(:pet_image, PetImage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
