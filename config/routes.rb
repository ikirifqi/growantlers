Rails.application.routes.draw do
  devise_for :admins

  root 'home#index'

  get '/portfolio' => 'home#portfolio', :as => :portfolio
  get '/contact' => 'home#contact', :as => :contact
end
