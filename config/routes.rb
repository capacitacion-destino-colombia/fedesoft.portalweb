Rails.application.routes.draw do
  resources :rols do
    resources :skills, shallow: true 
  end
  
  #la palabra reservada shallow permite que valide que si no existe el padre, no deje crear al hijo..
  
  get 'skills/:id/rols', to: 'skills#all-rols'
  post 'skills/:id/rols', to: 'skills#create-rols'
  get 'skills', to: 'skills#get_all'
  
  #se define los objetos uusarios y telefonos
  resources :users do
    resources :phones
  end
  #resources :skills do
  #  resources :rols
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
