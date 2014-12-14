require 'rails_helper'

RSpec.describe "issues/index", :type => :view do
  before(:each) do
    assign(:issues, [
      Issue.create!(
        :title => "Title",
        :description => "MyText",
        :is_reproducible => false,
        :category => "Category"
      ),
      Issue.create!(
        :title => "Title",
        :description => "MyText",
        :is_reproducible => false,
        :category => "Category"
      )
    ])
  end

  it "renders a list of issues" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
