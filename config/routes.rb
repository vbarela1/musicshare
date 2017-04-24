Rails.application.routes.draw do
  root 'musicians#index'

  resources :musicians do
    resources :songs
  end

end
