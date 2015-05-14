require "rails_helper"

RSpec.describe PetImagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pet_images").to route_to("pet_images#index")
    end

    it "routes to #new" do
      expect(:get => "/pet_images/new").to route_to("pet_images#new")
    end

    it "routes to #show" do
      expect(:get => "/pet_images/1").to route_to("pet_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pet_images/1/edit").to route_to("pet_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pet_images").to route_to("pet_images#create")
    end

    it "routes to #update" do
      expect(:put => "/pet_images/1").to route_to("pet_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pet_images/1").to route_to("pet_images#destroy", :id => "1")
    end

  end
end
