Rails.application.routes.draw do
  root to: 'lr#index'

  post 'lr/view'
  get 'lr/results', to: 'lr#results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
