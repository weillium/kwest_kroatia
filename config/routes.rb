Rails.application.routes.draw do
  root :to => "agenda_items#index"
  resources :scores
  resources :families
  resources :user_types
  resources :agenda_items
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
