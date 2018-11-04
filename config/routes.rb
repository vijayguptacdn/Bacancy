Rails.application.routes.draw do
  devise_for :users

  root "excels#index"
  resources :excels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
