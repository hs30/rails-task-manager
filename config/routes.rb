Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  get 'tasks', to: 'tasks#index'
  # Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create' # go back to Tasks list with new task
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end

# Notes:
# the default prefix is 'task' (model class name) if there's no prefix, otherwise add alias (as: :delete)
