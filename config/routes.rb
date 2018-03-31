Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :articles

  resource :examples, only: %i() do
    member do
      get 'job'
    end
  end
end
