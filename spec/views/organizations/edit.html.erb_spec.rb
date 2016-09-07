require 'rails_helper'

RSpec.describe "organizations/edit", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :name => "MyString",
      :website => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1,
      :description => "MyText",
      :volunteers => false,
      :donations => false
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input#organization_name[name=?]", "organization[name]"

      assert_select "input#organization_website[name=?]", "organization[website]"

      assert_select "input#organization_phone[name=?]", "organization[phone]"

      assert_select "input#organization_address[name=?]", "organization[address]"

      assert_select "input#organization_city[name=?]", "organization[city]"

      assert_select "input#organization_state[name=?]", "organization[state]"

      assert_select "input#organization_zipcode[name=?]", "organization[zipcode]"

      assert_select "textarea#organization_description[name=?]", "organization[description]"

      assert_select "input#organization_volunteers[name=?]", "organization[volunteers]"

      assert_select "input#organization_donations[name=?]", "organization[donations]"
    end
  end
end
