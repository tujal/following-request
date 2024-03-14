Rails.application.routes.draw do
  # post 'profile/:id', to: "", as: ""
  post 'profile/:id/follow', to: "profile#follow", as: 'follow'
  post 'profile/:id/unfollow', to: "profile#unfollow", as: 'unfollow'
  post 'profile/:id/accept', to: "profile#accept", as: 'accept'
  post 'profile/:id/decline', to: "profile#decline", as: 'decline'
  post 'profile/:id/cancel', to: "profile#cancel", as: 'cancel'
  


  get 'profile/:id/user_list', to: "profile#user_list", as: 'user_list'
  get 'profile/:id', to: 'profile#show', as: 'profile'
  get 'profile/:id/request_page', to: 'profile#request_page', as: 'request'
  get 'profile/:id/following', to: 'profile#following', as: 'following'
  get 'profile/:id/followers', to: 'profile#followers', as: 'followers'



  devise_for :users 
   

   root "home#index"
end
