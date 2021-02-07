class HealthCenter::UserHealthsController < ApplicationController
  
  before_action :authenticate_health_center!
  
end
