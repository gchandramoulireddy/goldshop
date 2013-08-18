ActionController::Routing::Routes.draw do |map|
  map.login "login", :controller => "sessions", :action => "new"
  map.logout "logout", :controller => "sessions", :action => "destroy"
  map.signup "signup", :controller => "users", :action => "new"
  map.resources :users
  map.resources :sessions

  map.resources :invoices

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
