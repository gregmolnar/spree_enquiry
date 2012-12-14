Spree::Core::Engine.routes.draw do
  namespace :admin do
  	resources :enquiries
  end
  resources :enquiries, :only => [:new, :create]
  # Add your extension routes here
end
