class ProfessionalAssociationsController < ApplicationController
  def index
    @professional_associations = ProfessionalAssociation.all
  end

  def show
    @professional_association = ProfessionalAssociation.find(params[:id])
  end

  def new
    @professional_association = ProfessionalAssociation.new
  end

  def create
    @professional_association = ProfessionalAssociation.new
    @professional_association.name = params[:name]

    if @professional_association.save
      redirect_to "/professional_associations", :notice => "Professional association created successfully."
    else
      render 'new'
    end
  end

  def edit
    @professional_association = ProfessionalAssociation.find(params[:id])
  end

  def update
    @professional_association = ProfessionalAssociation.find(params[:id])

    @professional_association.name = params[:name]

    if @professional_association.save
      redirect_to "/professional_associations", :notice => "Professional association updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @professional_association = ProfessionalAssociation.find(params[:id])

    @professional_association.destroy

    redirect_to "/professional_associations", :notice => "Professional association deleted."
  end
end
