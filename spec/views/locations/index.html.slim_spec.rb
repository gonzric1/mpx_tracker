require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        name: "MyText",
        available_vaccines: 2,
        phone: "MyText",
        city: "MyText",
        state: "MyText",
        street: "MyText",
        zip: "MyText",
        location_type: "MyText",
        appointment: "MyText"
      ),
      Location.create!(
        name: "MyText",
        available_vaccines: 2,
        phone: "MyText",
        city: "MyText",
        state: "MyText",
        street: "MyText",
        zip: "MyText",
        location_type: "MyText",
        appointment: "MyText"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
