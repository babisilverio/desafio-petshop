Rails.application.routes.draw do
  resources :lista_racas
  #root 'welcome#index'
  root 'cachorros#index'
  get 'welcome/index'

  resources :cachorros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
