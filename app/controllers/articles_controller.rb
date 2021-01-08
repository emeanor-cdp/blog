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

  def new
    # Instantiates a new article but doesn't save it. The view contains the form
    # to create a new article.
    @article = Article.new
  end

  def create
    # Instantiates a new article with values for title and body, passed from the
    # article creation form in the #new view.
    @article = Article.new(title: '...', body: '...')

    # Attempt to save it. Redirect to its page if successful.
    if @article.save
      redirect_to article
    else
      # If not successful, redisplay the creation form in the #new view.
      render :new
  end
end
