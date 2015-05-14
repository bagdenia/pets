require 'rails_helper'

RSpec.describe "pet_images/new", type: :view do
  before(:each) do
    assign(:pet_image, PetImage.new())
  end

  it "renders new pet_image form" do
    render

    assert_select "form[action=?][method=?]", pet_images_path, "post" do
    end
  end
end
