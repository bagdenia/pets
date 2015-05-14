require 'rails_helper'

RSpec.describe "pet_images/index", type: :view do
  before(:each) do
    assign(:pet_images, [
      PetImage.create!(),
      PetImage.create!()
    ])
  end

  it "renders a list of pet_images" do
    render
  end
end
