Rails.application.routes.draw do
  resources :locations
  resources :sub_industries
  resources :industries
  resources :skills
  resources :categories
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
