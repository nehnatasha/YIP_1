Rails.application.routes.draw do
  root to: 'lab11#input'

  post 'lab11/output'
  get 'lab11/results', to: 'lab11#results'
  get 'lab11/input'

  get 'lab11/output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
