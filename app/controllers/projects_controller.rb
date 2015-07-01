class ProjectsController < ApplicationController
  skip_before_action :authenticate_service_provider!, :only =>[:index, :show]

  before_action :ensure_current_service_provider_is_owner, :only => [:update, :destroy, :edit]
    def ensure_current_service_provider_is_owner
      @project = Project.find(params[:id])
      if @project.service_provider_id != current_service_provider.id
        redirect_to root_url, :alert => "Nice Try"
      end
    end



  def index

    @projects = current_service_provider.projects


  end

  def show
    @project = Project.find(params[:id])

  end

  def new
    @project = Project.new

  end

  def create
    @project = Project.new
    @project.service_provider_id = params[:service_provider_id]
    @project.name = params[:name]
    @project.space_type_id = params[:space_type_id]
    @project.category_id = params[:category_id]
    @project.cost_amount = params[:cost_amount]
    @project.street_address_1 = params[:street_address_1]
    @project.street_address_2 = params[:street_address_2]
    @project.city = params[:city]
    @project.zip = params[:zip]
    @project.state = params[:state]
    @project.description = params[:description]
    @project.completed_on = params[:completed_on]
    @project.cost_amount_description = params[:cost_amount_description]
    @project.cost = params[:cost]
    @project.tag_list = params[:tag_list]

    if @project.save
      redirect_to "/service_providers/#{@project.service_provider_id}", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
    @photo = Photo.new

  end

  def update
    @project = Project.find(params[:id])

    @project.service_provider_id = params[:service_provider_id]
    @project.name = params[:name]
    @project.space_type_id = params[:space_type_id]
    @project.category_id = params[:category_id]
    @project.cost_amount = params[:cost_amount]
    @project.street_address_1 = params[:street_address_1]
    @project.street_address_2 = params[:street_address_2]
    @project.city = params[:city]
    @project.zip = params[:zip]
    @project.state = params[:state]
    @project.description = params[:description]
    @project.completed_on = params[:completed_on]
    @project.cost_amount_description = params[:cost_amount_description]
    @project.cost = params[:cost]
    @project.tag_list = params[:tag_list]

    if @project.save
      render 'show', :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
