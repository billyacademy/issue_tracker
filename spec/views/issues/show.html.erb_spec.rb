require 'rails_helper'

RSpec.describe "issues/show", :type => :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :title => "Title",
      :description => "MyText",
      :is_reproducible => false,
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Category/)
  end
end
