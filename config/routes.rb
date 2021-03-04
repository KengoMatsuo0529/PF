Rails.application.routes.draw do

mount ActionCable.server => '/cable'

  devise_for :health_centers
  devise_for :users
  devise_for :hospitals


scope "(:locale)", locale: /en|ja/ do
  root "user/homes#top"
end
  get '/:locale' => "static_pages#home"

namespace :user do

  resources :users, only: [:show, :edit, :update, :destroy]
  put "/users/:id/hide" => "users#hide", as: "users_hide"
  resources :health_centers, only: [:index, :show] do
    get "autocomplete_health_center_name", on: :collection
  end
  get "user_healths/confirm" => "user_healths#error"
  resources :user_healths, only: [:new, :create, :index, :show]
  post "user_healths/confirm" => "user_healths#confirm"
  get "health_centers/search" => "health_centers#search"
  get "/:health_center_id/room/" => "rooms#show", as: "chat_room"
  get "/messages/notification" => "messages#notification"
end

namespace :health_center do

  get "/rooms/search" => "rooms#search"
  resources :users, only: [:index, :show]
  get "/users/search" => "users#search"
  get "/:user_id/room/" => "rooms#show", as: "chat_room"
  get "/rooms" => "rooms#index", as: "chat_rooms"
  resources :user_healths, only: [:index, :show]
  resources :examinations, only: [:index, :show]
  resources :hospitals, only: [:index, :show]



end

namespace :hospital do

  resources :users, only: [:index, :show]
  resources :health_centers, only: [:index, :show]
  get "examination/comfirm" => "examinations#error"
  resources :examinations, only: [:index, :new, :create, :show]
  post "examination/confirm" => "examinations#confirm"
  get "/health_centers/search" => "health_centers#search"
  get "/users/search" => "users#search"

end

end
