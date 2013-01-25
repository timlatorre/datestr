Datestr::Application.routes.draw do

  root :to => 'home#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/about' => 'home#about'
  get '/register' => 'register#new'
  post '/register' => 'register#create'

  get '/profile' => 'users#show'
  put '/profile' => 'users#update'
  get '/profile/edit' => 'users#edit'
  get '/profile/new' => 'users#new'
  get '/profile/:id' => 'users#show', :as => 'userprofile'

  get '/photos' => 'photos#index'
  post '/photos' => 'photos#create'
  get '/photos/new' => 'photos#new'
  post '/photos/primary' => 'photos#primary'
  get '/photos/:id' => 'photos#show', :as => 'photo'

  get '/messages' => 'messages#index'

  get '/browse' => 'browse#index'
  get '/search' => 'browse#search'

end
