class IndustryTypesController < ApplicationController
  def index
    @industry_types = IndustryType.all
  end

  def show
    @industry_type = IndustryType.find(params[:id])
  end

  def new
    @industry_type = IndustryType.new
  end

  def create
    @industry_type = IndustryType.new
    @industry_type.name = params[:name]

    if @industry_type.save
      redirect_to "/industry_types", :notice => "Industry type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @industry_type = IndustryType.find(params[:id])
  end

  def update
    @industry_type = IndustryType.find(params[:id])

    @industry_type.name = params[:name]

    if @industry_type.save
      redirect_to "/industry_types", :notice => "Industry type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @industry_type = IndustryType.find(params[:id])

    @industry_type.destroy

    redirect_to "/industry_types", :notice => "Industry type deleted."
  end
end
