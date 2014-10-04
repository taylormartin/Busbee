Rails.application.routes.draw do
  devise_for :users

  resources :folders do
    member do
    post :create_item
    end
  end

  resources :items

  root to: "folders#index"

end
