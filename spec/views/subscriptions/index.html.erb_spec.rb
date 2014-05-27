require 'spec_helper'

describe "subscriptions/index" do
  before(:each) do
    assign(:subscriptions, [
      stub_model(Subscription,
        :name => "Name",
        :lastname => "Lastname",
        :grade_id => 1,
        :section_id => 2,
        :level_id => 3,
        :paymentmethod_id => 4,
        :school_id => 5,
        :active => false
      ),
      stub_model(Subscription,
        :name => "Name",
        :lastname => "Lastname",
        :grade_id => 1,
        :section_id => 2,
        :level_id => 3,
        :paymentmethod_id => 4,
        :school_id => 5,
        :active => false
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
