require 'spec_helper'

describe "subscriptions/index" do
  before(:each) do
    assign(:subscriptions, [
      stub_model(Subscription,
        :name => "Name",
        :lastname => "Lastname",
        :grade => "Grade",
        :section => "Section",
        :level => "Level",
        :paymentmethod => "Paymentmethod",
        :school => "School",
        :active => false,
        :location => "Location"
      ),
      stub_model(Subscription,
        :name => "Name",
        :lastname => "Lastname",
        :grade => "Grade",
        :section => "Section",
        :level => "Level",
        :paymentmethod => "Paymentmethod",
        :school => "School",
        :active => false,
        :location => "Location"
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Section".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => "Paymentmethod".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
