Rails.application.routes.draw do
  
  
  devise_for :health_centers, controllers: {
    sessions:       "health_center/sessions",
    passwords:      "health_center/passwords",
    registrations:  "health_center/registrations"
  }
  
  devise_for :users, controllers: {
    sessions:       "user/sessions",
    passwords:      "user/passwords",
    registrations:  "user/registrations"
  }


root to: "user/homes#top"

namespace :user do

  get "homes/about" => "user/homes#about"
  get "user_healths/confirm" => "user/user_healths#confirm"
  get "health_centers/:id" => "user/health_centers#search"
  
  resources :user_healths, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :health_centers, only: [:index, :show]
  
end

namespace :health_centers do
  
  get "health_center/homes/about" => "health_center/homes#about"
  get "health_center/users/search" => "health_center/users#search"
  
  resources :users, only: [:index, :show]
  resources :user_healths, only: [:index, :show]
  
end  

resources :user_healths

end
