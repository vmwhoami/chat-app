Rails.application.routes.draw do
root 'chatroom#index'
resources :users
get 'login',to: 'sessions#new'
post "login", to: "sessions#create"
end
