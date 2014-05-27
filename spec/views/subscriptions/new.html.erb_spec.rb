require 'spec_helper'

describe "subscriptions/new" do
  before(:each) do
    assign(:subscription, stub_model(Subscription,
      :name => "MyString",
      :lastname => "MyString",
      :grade_id => 1,
      :section_id => 1,
      :level_id => 1,
      :paymentmethod_id => 1,
      :school_id => 1,
      :active => false
    ).as_new_record)
  end

  it "renders new subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscriptions_path, "post" do
      assert_select "input#subscription_name[name=?]", "subscription[name]"
      assert_select "input#subscription_lastname[name=?]", "subscription[lastname]"
      assert_select "input#subscription_grade_id[name=?]", "subscription[grade_id]"
      assert_select "input#subscription_section_id[name=?]", "subscription[section_id]"
      assert_select "input#subscription_level_id[name=?]", "subscription[level_id]"
      assert_select "input#subscription_paymentmethod_id[name=?]", "subscription[paymentmethod_id]"
      assert_select "input#subscription_school_id[name=?]", "subscription[school_id]"
      assert_select "input#subscription_active[name=?]", "subscription[active]"
    end
  end
end
