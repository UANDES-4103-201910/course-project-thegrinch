Rails.application.routes.draw do
  put '/recover_post', to: 'users#recover_post'
  put '/remove_admin', to: 'users#remove_admin'
  put '/make_admin', to: 'users#make_admin'
  get 'users/edit',to: 'users#edit'
  delete 'remove_category', to: 'category_posts#destroy'
  post 'add_category', to: 'category_posts#create'
  devise_for :users
  get 'achievements', to: 'achievements#index'
  post 'achievements', to: 'achievements#create'
  delete 'achievements/destroy', to: 'achievements#destroy'
  put 'achievements/update', to: 'achievements#update'
  get 'categories', to: 'categories#index'
  post 'categories', to: 'categories#create'
  delete 'categories/destroy', to: 'categories#destroy'
  put 'categories/update', to: 'categories#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :comments
  resources :posts do
    resources :upvotepost
    resources :downvotepost
    resources :follow_posts
    resources :mark_innapropiateds
  end
  resources :users do
    resources :blocks
    resources :follow_users
  end
  resources :searches

  devise_scope :user do
    get '/register', to: 'devise/registrations#new'
    get '/sign_up', to: 'devise/registrations#new'
    get '/sign_in', to: 'devise/sessions#new'
    get '/log_in', to: 'devise/sessions#new'
  end

  get '/users/:id', to: 'users#show'
  put '/users/makeadmin', to: 'users#make_admin'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'

  root 'static_pages#home'

end
