Rails.application.routes.draw do
  get 'users/show'
  root to: 'items#index'
  resources :items, :path => "image" do
    resources :itemcart
  end
  resources :carts, :path => "panier" do
    resources :order, only: [:create]
    resources :orderitem, only: [:create]
  end
  devise_for :users, :path => "profile"

  resources :admins

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

end
