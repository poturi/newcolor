Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users_info#dummytop'
  
  get '/mypage/:id', to: 'users_info#mypage'
  get '/new', to: 'users_info#new'
  post '/create', to: 'users_info#create'
  get '/companysearch', to: 'users_info#companysearch'
  post '/companysearch', to: 'users_info#companysearch'
  get '/result', to: 'users_info#result'
  post '/result', to: 'users_info#result'
  get 'companies_infos/find'
  post 'companies_infos/find'
  get 'companies_infos/:id', to: 'users_info#companysearch'
  #resourse
  resources :userinfo
  
end