class ArticlesController < ApplicationController

  def show
    #byebug
    @article = Article.find(params[:id])
  end

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
      #alternately leave out article_path
      #redirect @article
    else
      render 'new'
    end
  end
end
