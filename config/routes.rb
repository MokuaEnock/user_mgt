Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
                       sessions: "sessions",
                       registrations: "registrations",
                     }
  # Defines the root path route ("/")
  # root "articles#index"
end
