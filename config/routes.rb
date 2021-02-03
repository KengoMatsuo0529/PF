Rails.application.routes.draw do
  devise_for :health_centers
  devise_for :users

get "/" => "user/homes#top"
get "/about" => "homes#about"

resources :user_healths


end
