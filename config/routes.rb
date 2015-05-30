Rails.application.routes.draw do
  devise_for :service_providers

  # Routes for the Service_provider resource:
  # CREATE
  # get "/service_providers/new", :controller => "service_providers", :action => "new"
  # post "/create_service_provider", :controller => "service_providers", :action => "create"

  # READ
  get "/service_providers", :controller => "service_providers", :action => "index"
  get "/service_providers/:id", :controller => "service_providers", :action => "show"

  # UPDATE
  # get "/service_providers/:id/edit", :controller => "service_providers", :action => "edit"
  # post "/update_service_provider/:id", :controller => "service_providers", :action => "update"

  # DELETE
  # get "/delete_service_provider/:id", :controller => "service_providers", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Space_type resource:
  # CREATE
  get "/space_types/new", :controller => "space_types", :action => "new"
  post "/create_space_type", :controller => "space_types", :action => "create"

  # READ
  get "/space_types", :controller => "space_types", :action => "index"
  get "/space_types/:id", :controller => "space_types", :action => "show"

  # UPDATE
  get "/space_types/:id/edit", :controller => "space_types", :action => "edit"
  post "/update_space_type/:id", :controller => "space_types", :action => "update"

  # DELETE
  get "/delete_space_type/:id", :controller => "space_types", :action => "destroy"
  #------------------------------

  # Routes for the Industry_type resource:
  # CREATE
  get "/industry_types/new", :controller => "industry_types", :action => "new"
  post "/create_industry_type", :controller => "industry_types", :action => "create"

  # READ
  get "/industry_types", :controller => "industry_types", :action => "index"
  get "/industry_types/:id", :controller => "industry_types", :action => "show"

  # UPDATE
  get "/industry_types/:id/edit", :controller => "industry_types", :action => "edit"
  post "/update_industry_type/:id", :controller => "industry_types", :action => "update"

  # DELETE
  get "/delete_industry_type/:id", :controller => "industry_types", :action => "destroy"
  #------------------------------

  # Routes for the Membership resource:
  # CREATE
  get "/memberships/new", :controller => "memberships", :action => "new"
  post "/create_membership", :controller => "memberships", :action => "create"

  # READ
  get "/memberships", :controller => "memberships", :action => "index"
  get "/memberships/:id", :controller => "memberships", :action => "show"

  # UPDATE
  get "/memberships/:id/edit", :controller => "memberships", :action => "edit"
  post "/update_membership/:id", :controller => "memberships", :action => "update"

  # DELETE
  get "/delete_membership/:id", :controller => "memberships", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

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

  root 'service_providers#index'
end
