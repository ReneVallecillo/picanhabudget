require 'spec_helper'

describe "payment_methods/edit" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(PaymentMethod,
      :name => "MyString"
    ))
  end

  it "renders the edit payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_method_path(@payment_method), "post" do
      assert_select "input#payment_method_name[name=?]", "payment_method[name]"
    end
  end
end
