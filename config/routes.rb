Rails.application.routes.draw do
  get 'urls/new'

  post '/urls' => 'urls#create'

  get '/urls' => 'urls#index'
  get '/:id' => 'urls#show'

  root 'home#index'
  post 'home/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
