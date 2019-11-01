Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :users
          resources :brands
          resources :routines 
          resources :routine_products

          post "/signup", to: "users#create"
          post '/login', to: 'authentication#create'
          post '/validate', to: 'authentication#validate'
          # post '/pm', to: 'routines#evening'
        end
      end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end