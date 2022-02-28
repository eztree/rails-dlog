Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'dogs/index'
      post 'dogs/create'
      delete 'dogs/:id', to: 'dogs#destroy'
    end
  end

  root 'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end