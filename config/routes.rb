Datestr::Application.routes.draw do

  root :to => 'home#index'
  get '/about' => 'home#about'
  get '/register' => 'users#new'

  get '/profile' => 'users#show'
  get '/profile/edit' => 'users#edit'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/messages' => 'messages#index'

  get '/browse' => 'browse#index'



end
