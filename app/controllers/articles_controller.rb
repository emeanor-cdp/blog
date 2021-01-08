class ArticlesController < ApplicationController
  def index
    # Controller instance variables can be accessed by the view (don't forget
    # the @). The view with the same name will automatically be used 
    # (index.html.erb in this case).
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
