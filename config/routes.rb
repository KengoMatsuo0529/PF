Rails.application.routes.draw do
  
  devise_for :health_centers
  
  devise_for :users

root to: "user/homes#top"

namespace :user do

  get "homes/about" => "homes#about"
  get "user_healths/confirm" => "user_healths#confirm"
  get "health_centers/search" => "health_centers#search"
  
  resources :user_healths, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :health_centers, only: [:index, :show]

end

namespace :health_center do
  
  get "/homes/about" => "homes#about"
  get "/users/search" => "users#search"
  get "/chats/search" => "chats#search"
  
  resources :users, only: [:index, :show]
  resources :user_healths, only: [:index, :show]
  
end  

resources :user_healths

end
