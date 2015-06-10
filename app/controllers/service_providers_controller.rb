class ServiceProvidersController < ApplicationController

  # skip_before_action :authenticate_service_provider!, :only =>[:index, :show,]

  def index

    @q = ServiceProvider.ransack(params[:q])
    @service_providers = @q.result(:distring => true).includes(:industry_type, :space_type)

  end

  def show
    @service_provider = ServiceProvider.find(params[:id])
    @project = Project.new

  end

  def new
    @service_provider = ServiceProvider.new
    @project = Project.new

  end

  def create
    @service_provider = ServiceProvider.new
    @service_provider.street_address_2 = params[:street_address_2]
    @service_provider.company_description = params[:company_description]
    @service_provider.company_email_address = params[:company_email_address]
    @service_provider.company_phone_number = params[:company_phone_number]
    @service_provider.awards = params[:awards]
    @service_provider.last_name = params[:last_name]
    @service_provider.cell_number = params[:cell_number]
    @service_provider.company_name = params[:company_name]
    @service_provider.street_address_1 = params[:street_address_1]
    @service_provider.city = params[:city]
    @service_provider.zip_code = params[:zip_code]
    @service_provider.industry_type_id = params[:industry_type_id]
    @service_provider.industry_experience = params[:industry_experience]
    @service_provider.certificates = params[:certificates]
    @service_provider.first_name = params[:first_name]
    @service_provider.better_business_bureau_rating = params[:better_business_bureau_rating]
    @service_provider.photo_face = params[:photo_face]
    @service_provider.photo_banner = params[:photo_banner]
    @service_provider.website = params[:website]
    @service_provider.space_type_id = params[:space_type_id]
    @service_provider.state = params[:state]
    @service_provider.personal_email_address = params[:personal_email_address]

    if @service_provider.save
      redirect_to "/service_providers", :notice => "Service provider created successfully."
    else
      render 'new'
    end
  end

  def edit
    @service_provider = ServiceProvider.find(params[:id])
    @project = Project.new
  end

  def update
    @service_provider = ServiceProvider.find(params[:id])

    @service_provider.street_address_2 = params[:street_address_2]
    @service_provider.company_description = params[:company_description]
    @service_provider.company_email_address = params[:company_email_address]
    @service_provider.company_phone_number = params[:company_phone_number]
    @service_provider.awards = params[:awards]
    @service_provider.last_name = params[:last_name]
    @service_provider.cell_number = params[:cell_number]
    @service_provider.company_name = params[:company_name]
    @service_provider.street_address_1 = params[:street_address_1]
    @service_provider.city = params[:city]
    @service_provider.zip_code = params[:zip_code]
    @service_provider.industry_type_id = params[:industry_type_id]
    @service_provider.industry_experience = params[:industry_experience]
    @service_provider.certificates = params[:certificates]
    @service_provider.first_name = params[:first_name]
    @service_provider.better_business_bureau_rating = params[:better_business_bureau_rating]
    @service_provider.photo_face = params[:photo_face]
    @service_provider.photo_banner = params[:photo_banner]
    @service_provider.website = params[:website]
    @service_provider.space_type_id = params[:space_type_id]
    @service_provider.state = params[:state]
    @service_provider.personal_email_address = params[:personal_email_address]

    if @service_provider.save
      redirect_to "/service_providers", :notice => "Service provider updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @service_provider = ServiceProvider.find(params[:id])

    @service_provider.destroy

    redirect_to "/service_providers", :notice => "Service provider deleted."
  end
end
