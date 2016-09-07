require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :name => "Name",
        :website => "Website",
        :phone => "Phone",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :description => "MyText",
        :volunteers => false,
        :donations => false
      ),
      Organization.create!(
        :name => "Name",
        :website => "Website",
        :phone => "Phone",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :description => "MyText",
        :volunteers => false,
        :donations => false
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
