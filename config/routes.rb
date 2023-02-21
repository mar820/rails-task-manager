Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create
  get 'tasks/new', to: 'tasks#new', as: :new

  # Read
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create'

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
