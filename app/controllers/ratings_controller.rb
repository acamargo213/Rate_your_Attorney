class RatingsController < ApplicationController
  def create
    @rating = Rating.new
    @rating.comments = params[:rating][:comments]
    @rating.stars = params[:rating][:stars]
    @rating.law_office_id = params[:rating][:law_office_id]
    @rating.save
    
    redirect_to @rating.law_office
  end
    
  def show
    @rating = Rating.new
  end
  
  
end