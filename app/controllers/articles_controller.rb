class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # handle the artcle and display it
    # render plain: params[:article].inspect

    # instance of an article
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  # require article as params
  # allow that article as title and description
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end