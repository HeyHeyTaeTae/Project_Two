Rails.application.routes.draw do

  resources :users
	resources :rooms
	resources :buttons

  root to: "welcome#index"

  get "/", to: "welcome#index"

  #need a "sign_in" path

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sessions", to: "sessions#destroy", as: "user_logout"

end


#      Prefix Verb   URI Pattern                 Controller#Action
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#       rooms GET    /rooms(.:format)            rooms#index
#             POST   /rooms(.:format)            rooms#create
#    new_room GET    /rooms/new(.:format)        rooms#new
#   edit_room GET    /rooms/:id/edit(.:format)   rooms#edit
#        room GET    /rooms/:id(.:format)        rooms#show
#             PATCH  /rooms/:id(.:format)        rooms#update
#             PUT    /rooms/:id(.:format)        rooms#update
#             DELETE /rooms/:id(.:format)        rooms#destroy
#     buttons GET    /buttons(.:format)          buttons#index
#             POST   /buttons(.:format)          buttons#create
#  new_button GET    /buttons/new(.:format)      buttons#new
# edit_button GET    /buttons/:id/edit(.:format) buttons#edit
#      button GET    /buttons/:id(.:format)      buttons#show
#             PATCH  /buttons/:id(.:format)      buttons#update
#             PUT    /buttons/:id(.:format)      buttons#update
#             DELETE /buttons/:id(.:format)      buttons#destroy
#        root GET    /                           welcome#index
#             GET    /                           welcome#index
