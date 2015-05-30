Rails.application.routes.draw do
  devise_for :service_providers
  root 'service_providers#index'
end
