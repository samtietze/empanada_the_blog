Rails.application.routes.draw do
  get '/' => 'entries#index'

  get '/entries' => 'entries#index'


  root 'entries#index'
end
