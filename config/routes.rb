Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  # this will create routes of articles
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
