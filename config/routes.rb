Rails.application.routes.draw do
  # This route declares that GET / requests are mapped to the index action of
  # ArticleController.
  root 'articles#index'

  # This route declares that GET /articles requests are mapped to the index
  # action of ArticlesController.
  get '/articles', to: 'articles#index'

  # :id designates a route parameter. A route parameter captures a segment of 
  # the request's path, and puts that value into the params Hash, which is 
  # accessible by the controller action (in this case, show).
  get '/articles/:id', to: 'article#show'
end
