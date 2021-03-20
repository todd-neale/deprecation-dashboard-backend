Rails.application.routes.draw do
  root to: 'api#index'
  patch '/updates/:id', to: 'updates#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
