Rails.application.routes.draw do
  resources :rols do
    resources :skills, shallow: true 
  end
  resources :colectors do
    resources :profiles 
  end
  resources :profiles do
    resources :courses 
  end
  resources :profiles do
    resources :donations 
  end
  
  #la palabra reservada shallow permite que valide que si no existe el padre, no deje crear al hijo..
  
  get 'skills/:id/rols', to: 'skills#all-rols'
  post 'skills/:id/rols', to: 'skills#create-rols'
  get 'skills', to: 'skills#get_all' 

  get 'profiles/:id/colectors', to: 'profiles#index'
  post 'profiles/:id/colectors', to: 'profiles#create-colectors'
  get 'profiles', to: 'colectors#index' 

  post 'profiles/:id/courses', to: 'profiles#create-courses'
  get 'profiles/:id/courses', to: 'profiles#index'
  get 'courses', to: 'courses#get_all'
  post 'courses', to:'courses#insert'
  
  #se define los objetos uusarios y telefonos
  resources :users do
    resources :phones
  end

  resources :orders
  #resources :skills do
  #  resources :rols
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
