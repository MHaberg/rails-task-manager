Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # display all tasks -- index
  get '/tasks', to: 'tasks#index'

  #display create form -- new
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # show details of one task -- show
  get 'tasks/:id', to: 'tasks#show', as: :task

  #save form data -- create
  post 'tasks', to: 'tasks#create'

  #display form for an update -- edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  #Update element -- update
  patch 'tasks/:id', to: 'tasks#update'

  #Delete an element -- destroy
  delete "/tasks/:id", to: "tasks#destroy"
end
