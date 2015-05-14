require 'rails_helper'

RSpec.describe "PetImages", type: :request do
  describe "GET /pet_images" do
    it "works! (now write some real specs)" do
      get pet_images_path
      expect(response).to have_http_status(200)
    end
  end
end
