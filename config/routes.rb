Rails.application.routes.draw do
  resources :stuffs
  resources :posts do
    resource :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'file', to: "posts#file"

  post 'stuffs/new', to: "stuffs#create"
end
