Rails.application.routes.draw do
  get 'lab8/input'

  get 'lab8/view'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
