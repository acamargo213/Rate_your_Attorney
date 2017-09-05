class LawOfficesController < ApplicationController
  def index
    @search=params[:search]
    @results= LawOffice.where("name LIKE ?","%#{@search}%").or(
      LawOffice.where("city LIKE ?","%#{@search}%").or(
       LawOffice.where("state LIKE ?","%#{@search}%")
      )
    )
    
  end
  
  def search
  
  end


  def new
    @law_office = LawOffice.new
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
    @law_office= LawOffice.find(params[:id])
  end
  
  def update
  end
  
  def show
    @law_office = LawOffice.find(params[:id])
  end
  
  def destroy
  end
end
