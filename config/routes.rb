Rails.application.routes.draw do
  get 'welcome/homepage'
  root 'welcome#homepage'
end
