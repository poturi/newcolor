Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users_info#dummytop'
  
  get '/mypage/:id', to: 'users_info#mypage'
  get '/new', to: 'users_info#new'
  post '/create', to: 'users_info#create'
  
  #resours
  resources :userinfo
  
end
