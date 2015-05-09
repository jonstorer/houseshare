Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'

  resource :sessions, :only => :destroy

  root 'welcome#index'
end
