require 'rails_helper'

RSpec.describe 'Pets resource', type: :request do
  it "sends you to login if you are not authenticated" do
    get pets_path
    expect(response).to redirect_to '/users/sign_in'
  end
end
