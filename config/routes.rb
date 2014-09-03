Rails.application.routes.draw do
  match('/contributors', {:via => :get, :to => 'contributors#index'})
end
