Datestr::Application.routes.draw do

  get '/' => 'home#index'
  get '/about' => 'home#about'
  get '/register' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/messages' => 'messages#index'

  get '/browse' => 'browse#index'



end
