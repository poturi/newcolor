Rails.application.routes.draw do
  get '/mypage/:id', to: 'users_info#mypage'

  get '/new', to: 'users_info#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users_info#dummytop'
  
  #resours
  resources :userinfo
  
end
