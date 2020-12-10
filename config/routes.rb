Rails.application.routes.draw do
  resources :follows
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  resources :users
  post 'users/:id/follow', to: "users#follow", as: "follow_user"
  post 'users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  #штукаа не получает (get), а отправляет данные — получается запись в таблице

  # get 'about/index'
  # get 'promo/index'
  resources :posts do
      resources :comments
      resources :likes
      resources :dislikes
      resources :favorites
  end
  resources :subscribers
  get 'posts/index'

  #если get – берем из базы данных

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  root 'promo#index'


  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show'
  delete 'users/:id', to: 'users#destroy'

  get 'users/:id/following', :to => "users#following", :as => :following
  # root 'posts#index'
  #так мы переназначаем папку posts (лежит в app) как главную, чтобы именно она открылась в сервере
end
