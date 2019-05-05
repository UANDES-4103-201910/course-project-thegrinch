Rails.application.routes.draw do
  get 'achievements/index'
  get 'achievements/new'
  get 'achievements/create'
  get 'achievements/destroy'
  get 'achievements/edit'
  get 'categories/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/destroy'
  get 'categories/edit'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :comments
  resources :posts
  resources :users

  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'

  get '/projects', to: 'projects#index'
  delete '/project/:id', to: 'projects#destroy'

  get '/categories', to: 'pages#index_categories'
  post '/categories', to: 'pages#create_category'

  get '/projects/:id/fund', to: 'funds#new'
  post '/projects/:id/fund', to: 'funds#create'

  # post '/users/:id/follow', to: 'users#follow'
  # post '/projects/:id/favorite', to: 'projects#favorite'

  post '/users/:id/projects/new', to: 'projects#create'
  post '/projects/:id/promises/new', to: 'promises#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'static_pages#home'

end
