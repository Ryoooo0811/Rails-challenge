Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'homes#top'
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
