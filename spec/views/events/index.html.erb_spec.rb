require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :organizer_id => 2,
        :location => "Location",
        :description => "MyText",
        :need_volunteers => false,
        :need_donations => false
      ),
      Event.create!(
        :title => "Title",
        :organizer_id => 2,
        :location => "Location",
        :description => "MyText",
        :need_volunteers => false,
        :need_donations => false
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
