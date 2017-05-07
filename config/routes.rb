Rails.application.routes.draw do
  devise_for :users
  root to: 'search#main'

  get 'main' => "search#main"
  post 'main' => "search#main"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
