Rails.application.routes.draw do

  get '/entries' => 'entries#index'

  get '/entries/new' => 'entries#new'

  post '/entries' => 'entries#create'

  get '/entries/:id' => 'entries#show'

  get '/entries/:id/edit' => 'entries#edit'

  patch '/entries/:id' => 'entries#update'

  delete '/entries/:id' => 'entries#destroy'

  get '/' => 'entries#index'

  root 'entries#index'
end
