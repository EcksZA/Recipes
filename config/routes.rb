Rails.application.routes.draw do
  match('/contributors', {:via => :get, :to => 'contributors#index'})
  match('/contributors', {:via => :post, :to => 'contributors#create'})
  match('/contributors/new', {:via => :get, :to => 'contributors#new'})
  match('/contributors/:id', {:via => :get, :to => 'contributors#show'})
  match('/contributors/:id/edit', {:via => :get, :to => 'contributors#edit'})
  match('/contributors/:id', {:via => [:patch, :post], :to => 'contributors#update'})
  match('/contributors', {:via => :delete, :to => 'contributors#destroy'})

  match('/tags', {:via => :get, :to => 'tags#index'})
end
