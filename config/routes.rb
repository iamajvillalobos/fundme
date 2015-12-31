Rails.application.routes.draw do
  get "projects" => "projects#index"
  get "project/:id" => "projects#show", as: 'project'
end
