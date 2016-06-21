Rails.application.routes.draw do
  devise_for :admins, :controllers => { :sessions => 'admin_sessions' }

  root 'home#index'

  get '/portfolio' => 'home#portfolio', :as => :public_portfolio
  get '/portfolio/:slug_id' => 'home#show_portfolio', :as => :public_show_portfolio
  get '/contact' => 'home#contact', :as => :contact
  post '/contact' => 'home#submit_contact', :as => :submit_contact

  scope :admins do
    get '/dashboard' => 'dashboard#index', :as => :dashboard

    resources :admins
    resources :teams
    resources :portfolios
    end
end
