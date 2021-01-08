Rails.application.routes.draw do
  # This route declares that GET / requests are mapped to the index action of
  # ArticleController.
  root 'articles#index'

  # This route declares that GET /articles requests are mapped to the index
  # action of ArticlesController.
  get '/articles', to: 'articles#index'
end
