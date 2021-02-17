Rails.application.routes.draw do

mount ActionCable.server => '/cable'

  devise_for :health_centers
  devise_for :users

root to: "user/homes#top"

scope "(:locale)", locale: /en|ja/ do
  root "user/homes#top"
end
  get '/:locale' => "static_pages#home"

namespace :user do

  get "homes/about" => "homes#about"

  resources :users, only: [:show, :edit, :update, :destroy]
  put "/users/:id/hide" => "users#hide", as: "users_hide"
  resources :health_centers, only: [:index, :show] do
    get "autocomplete_health_center_name", on: :collection
  end
  resources :user_healths, only: [:new, :create, :index, :show]
  post "user_healths/confirm" => "user_healths#confirm"
  get "health_centers/search" => "health_centers#search"
  get "/room/:health_center_id" => "rooms#show", as: "chat_room"
  # resource :room
  get "/messages/notification" => "messages#notification"
end

namespace :health_center do

  get "/homes/about" => "homes#about"
  get "/rooms/search" => "rooms#search"

  resources :users, only: [:index, :show]
  get "/users/search" => "users#search"
  get "/room/:user_id" => "rooms#show", as: "chat_room"
  get "/rooms" => "rooms#index", as: "chat_rooms"
  resources :user_healths, only: [:index, :show]

end

end
