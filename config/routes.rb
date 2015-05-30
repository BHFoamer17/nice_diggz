Rails.application.routes.draw do
  # Routes for the Professional_association resource:
  # CREATE
  get "/professional_associations/new", :controller => "professional_associations", :action => "new"
  post "/create_professional_association", :controller => "professional_associations", :action => "create"

  # READ
  get "/professional_associations", :controller => "professional_associations", :action => "index"
  get "/professional_associations/:id", :controller => "professional_associations", :action => "show"

  # UPDATE
  get "/professional_associations/:id/edit", :controller => "professional_associations", :action => "edit"
  post "/update_professional_association/:id", :controller => "professional_associations", :action => "update"

  # DELETE
  get "/delete_professional_association/:id", :controller => "professional_associations", :action => "destroy"
  #------------------------------

  devise_for :service_providers
  root 'service_providers#index'
end
