require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        title: "Title",
        content: "Content"
      ),
      Blog.create!(
        title: "Title",
        content: "Content"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
  end
end
