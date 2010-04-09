class PeopleController < ApplicationController
  def list
    @people = Person.find(:all)
  end
  
  def show
    @person = Person.find(params[:id])
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to :action => 'show', :id => @person
    else
      render :action => 'edit'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def delete
    Person.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
