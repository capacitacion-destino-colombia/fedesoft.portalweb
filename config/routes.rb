Rails.application.routes.draw do
  resources :rols do
  resources :skills, shallow: true 
  end
  
  get 'skills/:id/rols', to: 'skills#all-rols'
  post 'skills/:id/rols', to: 'skills#create-rols'
  get 'skills', to: 'skills#get_all'
  #resources :skills do
  #  resources :rols
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
