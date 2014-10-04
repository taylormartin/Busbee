Rails.application.routes.draw do
  devise_for :users

  resources :folders
  resources :items

  root to: "folders#index"

end
