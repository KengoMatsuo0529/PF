class User::ChatsController < ApplicationController
  
  before_action :authenticate_user!
  
end
