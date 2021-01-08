Rails.application.routes.draw do
  # This route declares that GET / requests are mapped to the index action of
  # ArticleController.
  root 'articles#index'

  # Creates all the routes needed for a basic CRUD object, so we don't have to
  # do it manually.
  resources :articles do
    # This creates comments as a nested resource within articles. This is 
    # another part of capturing the hierarchical relationship that exists 
    # between articles and comments.
    resources :comments
  end
  
  ### Below is the manual way that's obscured by the simpler code above.
  # This route declares that GET /articles requests are mapped to the index
  # action of ArticlesController.
  #get '/articles', to: 'articles#index'

  # :id designates a route parameter. A route parameter captures a segment of 
  # the request's path, and puts that value into the params Hash, which is 
  # accessible by the controller action (in this case, show).
  #get '/articles/:id', to: 'articles#show'
end
