require 'rails_helper'

RSpec.describe "issues/new", :type => :view do
  before(:each) do
    assign(:issue, Issue.new(
      :title => "MyString",
      :description => "MyText",
      :is_reproducible => false,
      :category => "MyString"
    ))
  end

  it "renders new issue form" do
    render

    assert_select "form[action=?][method=?]", issues_path, "post" do

      assert_select "input#issue_title[name=?]", "issue[title]"

      assert_select "textarea#issue_description[name=?]", "issue[description]"

      assert_select "input#issue_is_reproducible[name=?]", "issue[is_reproducible]"

      assert_select "input#issue_category[name=?]", "issue[category]"
    end
  end
end
