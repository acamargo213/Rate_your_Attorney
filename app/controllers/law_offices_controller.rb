class LawOfficesController < ApplicationController
  def index
  end

  def new
    @law_office = Law_office.new
  end
  
  def create
  end
  
  def edit
    @law_office = law_office.find(params[:id])
  end
  
  def update
  end
  
  def show
    @law_office = LawOffice.find(params[:id])
  end
  
  def destroy
  end
  
end
