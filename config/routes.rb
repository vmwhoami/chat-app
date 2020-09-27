Rails.application.routes.draw do

  get 'login',to:'session#new'
  post 'login',to:'session#create'
  get 'logout',to: 'session#destroy', as: 'logout'
root 'chatroom#index'
resources :users
 
end
