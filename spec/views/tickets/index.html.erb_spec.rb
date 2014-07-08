require 'spec_helper'

describe "tickets/index" do
  before(:each) do
    assign(:tickets, [
      stub_model(Ticket,
        :status => "Status",
        :funrider => "Funrider",
        :pilot => "Pilot",
        :about => "MyText",
        :roll1 => 1,
        :roll2 => 2,
        :roll3 => 3,
        :description => "MyText"
      ),
      stub_model(Ticket,
        :status => "Status",
        :funrider => "Funrider",
        :pilot => "Pilot",
        :about => "MyText",
        :roll1 => 1,
        :roll2 => 2,
        :roll3 => 3,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Funrider".to_s, :count => 2
    assert_select "tr>td", :text => "Pilot".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
