class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # handle the artcle and display it
    render plain: params[:article].inspect
  end
end