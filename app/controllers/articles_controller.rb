class ArticlesController < ApplicationController
  def index
    # Controller instance variables can be accessed by the view.
    @articles = Article.all
  end
end
