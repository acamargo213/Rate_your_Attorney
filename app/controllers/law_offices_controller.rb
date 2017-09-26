class LawOfficesController < ApplicationController
  def index
  end

  def new
    @law_office = LawOffice.new
  end
  
  def create
    @law_office = LawOffice.new
    @law_office.name = params[:name]
    @law_office.phone_number = params[:phone_number]
    @law_office.street_address = params[:street_address]
    @law_office.city = params[:city]
    @law_office.state = params[:state]
    @law_office.zip = params[:zip]
    @law_office.website_link = params[:website_link]
    
    if @law_office.save
      redirect_to '/law_offices'
    else
      render action: 'new'
    end
  end
  
  def edit
    @law_office = LawOffice.find(params[:id])
  end
  
  def update
  end
  
  def show
    @law_office = LawOffice.find(params[:id])
  end
  
  def destroy
  end
  
end

