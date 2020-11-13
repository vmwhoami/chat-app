Rails.application.routes.draw do

  get 'login',to:'session#new'
  post 'login',to:'session#create'
  get 'logout',to: 'session#destroy', as: 'logout'
  post 'message',to: 'messages#create'

  root 'chatroom#index'
  resources :users
 mount ActionCable.server, at: '/cable'
end
