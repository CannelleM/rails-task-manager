Rails.application.routes.draw do
  # read all
  get 'tasks', to: 'tasks#index'
  # create a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # read one (show method must always be after the new route)
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
