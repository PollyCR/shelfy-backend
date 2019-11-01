Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :users
          resources :morning_routines 
          resources :morning_routine_products 
          resources :evening_routines 
          resources :evening_routine_products
          resources :treatment_routines
          resources :treatment_routine_products

          post "/signup", to: "users#create"

          post '/login', to: 'authentication#create'
          post '/validate', to: 'authentication#validate'
        end
      end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end