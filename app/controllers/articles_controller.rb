class ArticlesController < ApplicationController
  # before anything else, call set_article method first for whenever these actions are called individually
  before_action :set_article, only:[:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    
  end

  def create
    # instance of an article
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created"
      # article_ is the prefix of article#show rails routes then path is to its path
      redirect_to article_path(@article)
    else
      # render the form again, this means it went through a validation
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @article.destroy
    flash[:success] = "Article was successfully deleted"
    redirect_to articles_path
  end

 
  private
    # find the article with the parameter :id and save an instance of it with @article
    def set_article
      @article = Article.find(params[:id])
    end

    # require article as params
    # allow that article as title and description
    def article_params
      params.require(:article).permit(:title, :description)
    end
end