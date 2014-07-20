class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article saved"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private
    def article_params
      params.require(:article).permit(:article_title, :article_big, :article_small, :article_image, :player_id, :club_id)
    end
end