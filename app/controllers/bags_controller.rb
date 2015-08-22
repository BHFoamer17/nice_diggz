class BagsController < ApplicationController
  before_action :authenticate_service_provider!

  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
    @bag = Bag.new
  end

  def create
    # @bag = Bag.new
    # @bag.name = params[:name]
    # @bag.bagable_type = params[:bagable_type]
    # @bag.bagable_id = params[:bagable_id]

    # if @bag.save
    #   redirect_to "/bags", :notice => "Bag created successfully."
    # else
    #   render 'new'
    # end

    @bag = @bagable.bags.new bag_params
    @bag.service_provider_id = current_service_provider
    @bag.save
    redirect_to @bagable, notice: "Tag created successfully"

  end

private

  def bag_params
    params.require(:bag).permit(:tag_option_id, :tag_option_ids)
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def update
    @bag = Bag.find(params[:id])

    @bag.name = params[:name]
    @bag.bagable_type = params[:bagable_type]
    @bag.bagable_id = params[:bagable_id]

    if @bag.save
      redirect_to "/bags", :notice => "Bag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bag = Bag.find(params[:id])

    @bag.destroy

    redirect_to "/bags", :notice => "Bag deleted."
  end
end
