class DescriptionsController < ApplicationController
  def index
    @descriptions = Description.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json {render :json => @descriptions.map(&:attributes)}
    end
  end

  def show
    @description = Description.find(params[:id])
  end

  def new
    @description = Description.new
  end

  def create
    @description = Description.new
    @description.name = params[:name]
    @description.token = params[:token]


    if @description.save
      redirect_to "/descriptions", :notice => "Description created successfully."
    else
      render 'new'
    end
  end

  def edit
    @description = Description.find(params[:id])
  end

  def update
    @description = Description.find(params[:id])

    @description.name = params[:name]
    @description.token = params[:token]


    if @description.save
      redirect_to "/descriptions", :notice => "Description updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @description = Description.find(params[:id])

    @description.destroy

    redirect_to "/descriptions", :notice => "Description deleted."
  end
end
