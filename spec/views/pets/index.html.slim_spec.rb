require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :name => "Name",
        :kind => "Kind",
        :gender => "Gender"
      ),
      Pet.create!(
        :name => "Name",
        :kind => "Kind",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
