class LawOfficesController < ApplicationController
  def index
    @search = params[:search]
    @tokens = @search.split
    @results = [ ]
    @tokens.each do |token|
      @results += LawOffice.where("name LIKE ?","%#{token}%").or(
        LawOffice.where("city LIKE ?","%#{token}%").or(
         LawOffice.where("state LIKE ?","%#{token}%").or(
           LawOffice.where("zip LIKE ?","%#{token}%")
           )
        )
      )
    end
    @results.uniq!
  end
  
  def search
  
  end


  def new
    @law_office = LawOffice.new
    @rating = Rating.new
  end
  
  def create
    @law_office = LawOffice.new
    @law_office.name = params[:law_office][:name]
    @law_office.phone_number = params[:law_office][:phone_number]
    @law_office.street_address = params[:law_office][:street_address]
    @law_office.city = params[:law_office][:city]
    @law_office.state = params[:law_office][:state]
    @law_office.zip = params[:law_office][:zip]
    @law_office.website_link = params[:law_office][:website_link]
    @law_office.save
    
    redirect_to '/'
  end
  
  def edit
    @law_office = LawOffice.find(params[:id])
  end
  
  def update
  end
  
  def show
    @law_office = LawOffice.find(params[:id])
    @rating = Rating.new
    @ratings = @law_office.ratings
     if @ratings.blank?
       @avg_rating = 0
     else
       @avg_rating = @ratings.average(:stars).round(1)
     end
  end
  
  def destroy
  end
end

