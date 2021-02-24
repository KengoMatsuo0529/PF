class HealthCenter::MessagesController < ApplicationController
  before_action :authenticate_health_center!
end
