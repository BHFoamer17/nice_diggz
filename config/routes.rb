Rails.application.routes.draw do
  # Routes for the Project resource:
  # CREATE
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

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
