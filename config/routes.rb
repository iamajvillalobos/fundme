Rails.application.routes.draw do
  root "projects#index"
  get "projects" => "projects#index"
  get "project/:id" => "projects#show", as: 'project'
  get "project/:id/edit" => "projects#edit", as: 'edit_project'
  patch "project/:id" => "projects#update"
end
