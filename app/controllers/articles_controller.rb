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
    @article = Article.new(article_params)

    # Attempt to save it. Redirect to its page if successful.
    # redirect_to causes the browser to make a new request, which needs to be
    # done when the database is mutated. Otherwise, if the user refreshes the
    # page, the same mutation will be repeated.
    if @article.save
      redirect_to @article
    else
      # If not successful, redisplay the creation form in the #new view.
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :new
    end
  end

  private
  def article_params
    # Filters the params Hash passed by the create view to make sure it doesn't
    # contain values we don't want. Called above in #create.
    params.require(:article).permit(:title, :body)
  end
end
