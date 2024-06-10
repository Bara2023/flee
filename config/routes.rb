Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :searches, only: %i[new create] do
    resources :travels, only: :index do
      resources :liked_travels, only: :create
    end
  end

  resources :travels, only: %i[show new create] do
    resources :attendances, only: :create
    member do
      get :chatroom
      resources :messages, only: :create
    end
  end
  
  resources :users, only: :show
  resources :attendances, only: :update

  get "/dashboard", to: "dashboard#dashboard"
  get "/dashboard/searches", to: "dashboard#my_searches"
  get "/dashboard/travels", to: "dashboard#my_travels"
  get "/dashboard/candidatures", to: "dashboard#my_candidatures"

  get "/fav/:id", to: "liked_travels#fav"
  get "/bookmarks", to: "liked_travels#bookmarks"

  # resources :liked_travels, only: [:destroy] ?????????
end
