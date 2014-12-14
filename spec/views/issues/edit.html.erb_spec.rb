require 'rails_helper'

RSpec.describe "issues/edit", :type => :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :title => "MyString",
      :description => "MyText",
      :is_reproducible => false,
      :category => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    assert_select "form[action=?][method=?]", issue_path(@issue), "post" do

      assert_select "input#issue_title[name=?]", "issue[title]"

      assert_select "textarea#issue_description[name=?]", "issue[description]"

      assert_select "input#issue_is_reproducible[name=?]", "issue[is_reproducible]"

      assert_select "input#issue_category[name=?]", "issue[category]"
    end
  end
end
