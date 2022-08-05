require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      name: "MyText",
      available_vaccines: 1,
      phone: "MyText",
      city: "MyText",
      state: "MyText",
      street: "MyText",
      zip: "MyText",
      location_type: "MyText",
      appointment: "MyText"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "textarea[name=?]", "location[name]"

      assert_select "input[name=?]", "location[available_vaccines]"

      assert_select "textarea[name=?]", "location[phone]"

      assert_select "textarea[name=?]", "location[city]"

      assert_select "textarea[name=?]", "location[state]"

      assert_select "textarea[name=?]", "location[street]"

      assert_select "textarea[name=?]", "location[zip]"

      assert_select "textarea[name=?]", "location[location_type]"

      assert_select "textarea[name=?]", "location[appointment]"
    end
  end
end
