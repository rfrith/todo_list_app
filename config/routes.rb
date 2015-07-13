Rails.application.routes.draw do

  get '/show_projects_json' => 'projects#show_all_project_details'

  resources :projects do
    resources :items, :only => [:new, :create, :edit, :update]
    delete 'clear', :on => :member
  end
  root 'projects#index'
end
