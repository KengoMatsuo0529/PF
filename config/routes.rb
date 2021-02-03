Rails.application.routes.draw do
  devise_for :health_centers
  devise_for :users


resources :users
resources :health_centers
resources :user_health

end
