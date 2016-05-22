Rails.application.routes.draw do
  devise_for :admins

  root 'home#index'

  get '/portfolio' => 'home#portfolio', :as => :portfolio
  get '/portfolio/:slug_id' => 'home#show_portfolio', :as => :show_portfolio
  get '/contact' => 'home#contact', :as => :contact
  post '/contact' => 'home#submit_contact', :as => :submit_contact
end
