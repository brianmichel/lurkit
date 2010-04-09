class CitiesController < ApplicationController
  def list
    @city = City.find(:all)
  end
  
  def show
    @city = City.find(params[:id])
  end
  
  def new
    @city = City.new
  end
  
  def create
    @city = City.new(params[:city])
    if @city.save
      redirect_to :controller => 'people', :action => 'index'
    else
      render :action => 'new'
    end
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(params[:city])
      redirect_to :action => 'show', :id => @city
    else
      render :action => 'edit'
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def delete
    City.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
