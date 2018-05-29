Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :articles

  resource :jobs, only: %i() do
    member do
      post 'perform'
    end
  end

  namespace :api, format: :json do
    resource :sessions, only: %i(create destroy)
  end
end
