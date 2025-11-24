Rails.application.routes.draw do
  namespace :admin do
    resources :dashboard
  end
  # get "subscriptions/index"
  resources :teams


  authenticate :user, ->(user) { user.organization_owner? } do
    resources :subscriptions
    get "billing", to: "billing#portal"
    resources :organization_users do
      member do
        post "/change_role", to: "organization_users#change_role"
      end
    end
  # working Good Job for everyone
  # mount GoodJob::Engine => "good_job"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  end

  authenticate :user, ->(user) { user.admin? } do
    mount GoodJob::Engine => "good_job"
    namespace :admin do
      resources :dashboard do
        post :impersonate, on: :member
        post :stop_impersonating, on: :collection
      end
    end
  end




  # get "organization_users/index"
  get "/calendar", to: "calendar#index"
  # get "notifications/index"
  resources :notifications, only: [ :index ]
  get "read_notifications", to: "read_notifications#read_all"
  get "/search", to: "search#index"
  devise_for :users





  # resources :dashboard, only: [ :index ]
  # for subdomain only
  constraints subdomain: /.+/ do
    get "/dashboard", to: "dashboard#index", as: :dashboard
  end
  match "*path", to: "application#handle_options_request", via: :options




  resources :projects do
    resources :tasks
  end
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
