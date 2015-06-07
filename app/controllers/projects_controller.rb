class ProjectsController < ApplicationController
  def index
    # @projects = Project.all
    # if current.service_provider != nil
    # @projects = project.where({:service_provider_id => current_service_provider.id})
    @projects = current_service_provider.projects
    # else
    # @projects = Project.all
    # end

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

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
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

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
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
