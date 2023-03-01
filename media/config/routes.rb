Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  # get "/users" ,to: "users#index"
  # get "/users/:id",to: "users#show"
  resources :users do
    resources :posts
  end
  
  get "/users/:user_id/posts/:id/addlike" ,to: "posts#addlike", as:"user_post_addlike"
  # get "/users/:id/posts/", to: "posts#index"
  # post "/users/:user_id/posts/:id" , to: "posts#addlike", as: 'my_new_like'

end
