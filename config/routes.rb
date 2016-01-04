Rails.application.routes.draw do
  root "projects#index"
  get "projects" => "projects#index"
  get "project/:id" => "projects#show", as: 'project'
end
