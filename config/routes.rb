Rails.application.routes.draw do


  root to: 'projects#index'

  get '/projects', to: 'projects#index', as: 'projects'
  get '/projects/new', to: 'projects#new', as: 'new_projects'
  post '/projects', to: 'projects#create'
  get '/projects/:id', to: 'projects#show', as: 'project'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
