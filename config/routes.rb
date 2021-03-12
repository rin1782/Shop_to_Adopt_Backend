Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :inquiries, only: [:index, :create, :update]
      resources :pets, only: [:index, :create]
    end
  end
end
