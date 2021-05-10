Rails.application.routes.draw do
  root "home#index"
  
  devise_for :users
  post '/home/guest_sign_in', to: 'home#guest_sign_in'
  
  resources :cameras
  resources :photos
end
