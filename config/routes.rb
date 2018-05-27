Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users_info#dummytop'
  
  get '/mypage/:id', to: 'users_info#mypage'
  get '/new', to: 'users_info#new'
  post '/create', to: 'users_info#create'
  get  '/login', to: 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destro'
  
  #resours
  resources :userinfo
  
end
