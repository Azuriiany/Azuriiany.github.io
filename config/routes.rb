Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'sign_up', to: 'registrations#sign_up'
  get 'welcome', to: 'registrations#welcome'
  post 'create', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
