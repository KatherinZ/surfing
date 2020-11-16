Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # get 'about/index'
  # get 'promo/index'
  resources :posts do
	resources :comments
end
  resources :subscribers
  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  root 'promo#index'

  # root 'posts#index'
  #так мы переназначаем папку posts (лежит в app) как главную, чтобы именно она открылась в сервере
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
