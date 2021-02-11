class HealthCenter::ChatsController < ApplicationController
  
  before_action :authenticate_health_center!
end
