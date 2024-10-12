require 'rails_helper'

RSpec.describe Blog, type: :model do
  let(:blog) { FactoryBot.build(:blog) }

  # Test of Blog validation
  it "is valid with a title and content" do
    blog = Blog.new(title: "title", content: "my content")
    expect(blog).to be_valid
  end

  it "is invalid without a title" do
    blog = Blog.new(title: nil, content: "My content")
    expect(blog.errors[:title]).to include("can't be blank")
  end

  it "is invalid without content" do
    blog = Blog.new(title: "My Title", content: nil)
    expect(blog.errors[:content]).to include("can't be blank")
  end
end
