Rails.application.routes.draw do
  resources :rols do
  resources :skills, shallow: true 
  end
  resources :colectors do
    resources :profiles 
  end
  
  
  get 'skills/:id/rols', to: 'skills#all-rols'
  post 'skills/:id/rols', to: 'skills#create-rols'
  get 'skills', to: 'skills#get_all'
end
