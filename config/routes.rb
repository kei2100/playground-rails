Rails.application.routes.draw do
  root 'signup#index'

  namespace :api, format: :json do
    resource :signup, controller: :signup, only: :create
  end
end
