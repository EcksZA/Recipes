Rails.application.routes.draw do
  match('/contributors', {:via => :get, :to => 'contributors#index'})
  match('/contributors/new', {:via => :get, :to => 'contributors#new'})
  match('/contributors/:id', {:via => :get, :to => 'contributors#show'})
end
