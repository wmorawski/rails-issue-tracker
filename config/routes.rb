Rails.application.routes.draw do
  resources :issues
  resources :issue_statuses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
