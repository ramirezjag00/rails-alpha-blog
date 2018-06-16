class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    # find the article with the parameter :id and save an instance of it with @article
    @article = Article.find(params[:id])
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

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
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