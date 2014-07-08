require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :status => "MyString",
      :funrider => "MyString",
      :pilot => "MyString",
      :about => "MyText",
      :roll1 => 1,
      :roll2 => 1,
      :roll3 => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path, :method => "post" do
      assert_select "input#ticket_status", :name => "ticket[status]"
      assert_select "input#ticket_funrider", :name => "ticket[funrider]"
      assert_select "input#ticket_pilot", :name => "ticket[pilot]"
      assert_select "textarea#ticket_about", :name => "ticket[about]"
      assert_select "input#ticket_roll1", :name => "ticket[roll1]"
      assert_select "input#ticket_roll2", :name => "ticket[roll2]"
      assert_select "input#ticket_roll3", :name => "ticket[roll3]"
      assert_select "textarea#ticket_description", :name => "ticket[description]"
    end
  end
end
