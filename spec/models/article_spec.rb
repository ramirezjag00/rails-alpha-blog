require 'rails_helper'

RSpec.describe Article, type: :model do

  it "should have a title" do
    article = Article.new(title: nil, description: "Some description")
    expect(article.save).to eq(false)
  end

   it "should have a description" do
    article = Article.new(title: "some title", description: nil)
    expect(article.save).to eq(false)
  end


end