require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :organizer_id => 1,
      :location => "MyString",
      :description => "MyText",
      :need_volunteers => false,
      :need_donations => false
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_organizer_id[name=?]", "event[organizer_id]"

      assert_select "input#event_location[name=?]", "event[location]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_need_volunteers[name=?]", "event[need_volunteers]"

      assert_select "input#event_need_donations[name=?]", "event[need_donations]"
    end
  end
end
