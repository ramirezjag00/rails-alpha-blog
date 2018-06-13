class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # instance of an article
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      # article_ is the prefix of article#show rails routes then path is to its path
      redirect_to article_path(@article)
    else
      # render the form again, this means it went through a validation
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  # require article as params
  # allow that article as title and description
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end