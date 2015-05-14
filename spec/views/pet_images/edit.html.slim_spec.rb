require 'rails_helper'

RSpec.describe "pet_images/edit", type: :view do
  before(:each) do
    @pet_image = assign(:pet_image, PetImage.create!())
  end

  it "renders the edit pet_image form" do
    render

    assert_select "form[action=?][method=?]", pet_image_path(@pet_image), "post" do
    end
  end
end
