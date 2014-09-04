Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'contributors#index'})
  match('/contributors', {:via => :get, :to => 'contributors#index'})
  match('/contributors', {:via => :post, :to => 'contributors#create'})
  match('/contributors/new', {:via => :get, :to => 'contributors#new'})
  match('/contributors/:id', {:via => :get, :to => 'contributors#show'})
  match('/contributors/:id/edit', {:via => :get, :to => 'contributors#edit'})
  match('/contributors/:id', {:via => [:patch, :post], :to => 'contributors#update'})
  match('/contributors/:id', {:via => :delete, :to => 'contributors#destroy'})
  match('/contributers/:id/newtag', {:via => :get, :to => 'contributors#newtag'})

  match('/tags', {:via => :get, :to => 'tags#index'})
  match('/tags', {:via => :post, :to => 'tags#create'})
  match('/tags/new', {:via => :get, :to => 'tags#new'})
  match('/tags/:id', {:via => :get, :to => 'tags#show'})
  match('/tags/:id/edit', {:via => :get, :to => 'tags#edit'})
  match('/tags/:id', {:via => [:patch, :put], :to => 'tags#update'})
  match('/tags/:id', {:via => :delete, :to => 'tags#destroy'})
end
