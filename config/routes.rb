Rails.application.routes.draw do

  devise_for :users
  match ":controller(/:action(/:id))", :via => [:post, :get, :delete]
  root :to => "home#index"

end
