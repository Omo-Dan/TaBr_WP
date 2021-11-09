Rails.application.routes.draw do
  resources :industries
  resources :positions
  resources :projects
  get 'projects/index'
  resources :workprofiles
  root 'workprofiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
