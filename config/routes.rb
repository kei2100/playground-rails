Rails.application.routes.draw do
  root 'index#show'

  namespace :api, format: :json do
    resource :signup, controller: :signup, only: :create
  end
end
