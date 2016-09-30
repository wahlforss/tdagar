Rails.application.routes.draw do
	resources :welcome
  get 'welcome/homepage'
  root 'welcome#homepage'
  get '/info', to: "welcome#info"
  resources :contacts, only: [:new, :create]
end
