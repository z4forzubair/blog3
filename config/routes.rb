Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'

  resources :articles

  #articles start here
#  get '/articles/:id', to: 'articles#show', as: 'article'
  # 'as' is the name of the helper, to: says that to which controller#action it should go
  # and 'get' here is telling about the URL

  # Each route must have a controller and action against it, that it has specified
  # and there can be more than one routes against a single controller

=begin
  get '/articles', to: 'articles#index', as: 'articles'
  post '/articles', to: 'articles#create'
  get '/articles/new', to: 'articles#new', as: 'new_article'
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update'
  put '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destroy'
=end

	resources :brands, only: [:index, :show] do
	    resources :products, only: [:index, :show]
	  end
	 
	  resources :basket, only: [:show, :update, :destroy]
	 
	  #resolve("Basket") { route_for(:basket) }

  root 'welcome#index'		
end
