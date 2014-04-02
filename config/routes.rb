Meinderdiedas::Application.routes.draw do
  resources :sentences

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end