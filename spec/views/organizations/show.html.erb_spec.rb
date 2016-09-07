require 'rails_helper'

RSpec.describe "organizations/show", type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
