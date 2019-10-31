Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :artworks, only: [:index]
  end
  resources :artworks, only: [:create, :show, :update, :destroy]
  #get 'users' => 'users#index', as: 'users'
  #get 'users/:id' => 'users#show', as: 'user'
  #get 'users/:new' => 'users#new', as: 'new_user'
  #get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  #post 'users' => 'users#create'
  #patch 'users/:id' => 'users#update'
  #put 'users/:id' => 'users#update'
  #delete 'users/:id' => 'users#destroy'
  resources :artwork_shares, only: [:create, :destroy]
end
