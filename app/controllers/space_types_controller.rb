class SpaceTypesController < ApplicationController
  def index
    @space_types = SpaceType.all
  end

  def show
    @space_type = SpaceType.find(params[:id])
  end

  def new
    @space_type = SpaceType.new
  end

  def create
    @space_type = SpaceType.new
    @space_type.name = params[:name]

    if @space_type.save
      redirect_to "/space_types", :notice => "Space type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @space_type = SpaceType.find(params[:id])
  end

  def update
    @space_type = SpaceType.find(params[:id])

    @space_type.name = params[:name]

    if @space_type.save
      redirect_to "/space_types", :notice => "Space type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @space_type = SpaceType.find(params[:id])

    @space_type.destroy

    redirect_to "/space_types", :notice => "Space type deleted."
  end
end
