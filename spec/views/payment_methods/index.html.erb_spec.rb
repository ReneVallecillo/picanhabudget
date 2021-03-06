require 'spec_helper'

describe "payment_methods/index" do
  before(:each) do
    assign(:payment_methods, [
      stub_model(PaymentMethod,
        :name => "Name"
      ),
      stub_model(PaymentMethod,
        :name => "Name"
      )
    ])
  end

  it "renders a list of payment_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
