Rails.application.routes.draw do
  resources :setting_attendees
  # namespace :proxy do
  #   get 'steps/show'
  #   get 'steps/update'
  # end
  resources :proxy_instructions
  resources :proxy_types
  # resources :proxies
  resources :type_of_shares
  resources :appoint_proxy
  resources :shares
  resources :candidates
  resources :candidates do
    member do
      patch :upvote
    end
  end
  
  get 'self_checkin/index'
  get 'dashboards/index'
  post 'self_checkin/print'
  # get '../javascript/sidebars'
  # get 'self_checkin/attendee'
  # get 'self_checkins/index'
  resources :dashboards
  resources :attendees do
    collection do
      post :search
    end
  end
  resources :checkins, only: [:index, :show, :create]
  resources :prints, only: [:show]
  resources :customer_types
  get 'pages/home'
  resources :messages, only: [:create, :destroy]
  resources :voting_options
  resources :meetings
  resources :resolutions
  resources :elections
  resources :resolutions do
      member do
        patch :upvote 
        patch :downvote
        # put "like", to: "resolutions#upvote"
        # put "dislike", to: "resolutions#downvote"
      end
  end
  resources :agendas
  resources :dietary_restrictions
  resources :invitation_rsvps
  resources :invitation_responses
  resources :event_invitations
  get '/event_calendar(/:year(/:month))' => 'event_calendar#index', :as => :event_calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  get '/sidebars/index'
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
    confirmations: 'users/confirmations',
    sign_out: '/users/sign_out',
    # after_database_authentication: '/users/after-database-authentications'
  }
  resources :proxies, only: [:new, :create, :index, :destroy] do
    resources :steps, only: [:show, :update], controller: 'proxy/steps'
  end

  # post 'proxies/:proxy_id/proxy_steps/:step' => 'proxy_steps#update'
  
  # get '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  # devise_scope :user do
  #   get 'signup', to: 'users/registrations#new'
  #   get 'signin', to: 'users/sessions#new'
  #   delete 'signout', to: 'users/sessions#destroy'
  # end

end
