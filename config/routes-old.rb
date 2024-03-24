Rails.application.routes.draw do
  resources :attendees
  resources :checkins, only: [:index, :create]
  resources :customer_types
  get 'pages/home'
  resources :messages, only: [:create, :destroy]
  resources :voting_options
  resources :meetings
  resources :dietary_restrictions
  resources :invitation_rsvps
  resources :invitation_responses
  resources :event_invitations
  get '/event_calendar(/:year(/:month))' => 'event_calendar#index', :as => :event_calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  get 'sidebar/index'
  get 'sites', to: 'sites#index'
  get 'meetings/index'
  resources :events do
    resources :invitation_rsvps
    member do
      post :invite
    end
  end
  root to: "sites#index"
  resources :event_types
  resources :addresses
  resources :industries
  resources :event_statuses
  resources :roles
  resources :customers do
    resources :addresses
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }

  # get '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  # devise_scope :user do
  #   get 'signup', to: 'users/registrations#new'
  #   get 'signin', to: 'users/sessions#new'
  #   delete 'signout', to: 'users/sessions#destroy'
  # end

end
