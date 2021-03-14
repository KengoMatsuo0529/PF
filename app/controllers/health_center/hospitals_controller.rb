class HealthCenter::HospitalsController < ApplicationController

  def index
    #同じ市区町村にいる人の一覧から検索
    @hospitals = Hospital.search(params[:search])
  end
  
  def show
    @hospital = Hospital.find(params[:id])
  end
end
