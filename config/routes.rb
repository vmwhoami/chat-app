Rails.application.routes.draw do
  get 'login',to:'session#new'
  post 'login',to:'session#create'
  delete 'logout',to: 'session#destroy'
root 'chatroom#index'
resources :users
 
end
