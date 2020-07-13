class ArticlesController < ApplicationController

  def show
    #byebug
    @article = Article.find(params[:id])
  end

  def index
    @article = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
    #alternately leave out article_path
    #redirect @article
  end
end
