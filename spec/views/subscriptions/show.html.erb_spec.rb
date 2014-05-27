require 'spec_helper'

describe "subscriptions/show" do
  before(:each) do
    @subscription = assign(:subscription, stub_model(Subscription,
      :name => "Name",
      :lastname => "Lastname",
      :grade => "Grade",
      :section => "Section",
      :level => "Level",
      :paymentmethod => "Paymentmethod",
      :school => "School",
      :active => false,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Lastname/)
    rendered.should match(/Grade/)
    rendered.should match(/Section/)
    rendered.should match(/Level/)
    rendered.should match(/Paymentmethod/)
    rendered.should match(/School/)
    rendered.should match(/false/)
    rendered.should match(/Location/)
  end
end
