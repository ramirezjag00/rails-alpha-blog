require 'rails_helper'

RSpec.describe Article, type: :model do

  it "should have a title" do
    article = Article.new(title: nil, description: "Some description")
    expect(article.save).to eq(false)
  end

  it "should have a title with length in between 3-50" do
    article = Article.new(title: "12", description: "Some description")
    expect(article.save).to eq(false)
  end

   it "should have a description" do
    article = Article.new(title: "1234 678 abcde ", description: nil)
    expect(article.save).to eq(false)
  end

  it "should have a description with length in between 10-300" do
    article = Article.new(title: "1234 678 abcde ", description: "Some desc")
    expect(article.save).to eq(false)
  end

end