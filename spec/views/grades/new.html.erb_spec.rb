require 'spec_helper'

describe "grades/new" do
  before(:each) do
    assign(:grade, stub_model(Grade,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grades_path, "post" do
      assert_select "input#grade_name[name=?]", "grade[name]"
    end
  end
end
