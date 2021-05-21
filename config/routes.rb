Rails.application.routes.draw do
root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# delete '/restaurants/:id', to: 'restaurants#destroy'
#     get '/restaurants', to: 'restaurants#index'
#     get '/restaurants/:id', to: 'restaurants#show'
#     get '/restaurants/:id/edit', to: 'restaurants#edit'
#     get '/restaurants/new', to: 'restaurants#new'
#     patch '/restaurants/:id', to: 'restaurants#update'
#     post '/restaurants', to: 'restaurants#create'
