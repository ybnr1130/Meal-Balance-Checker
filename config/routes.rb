Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  # resourcesを使用したルーティング
  resources :menus, except: [:show]
  resources :menu_foods, only: [:create]
  resources :menu_recipes, only: [:create]
  resources :recipes
  resources :recipe_foods, only: [:new, :create]
  resources :foods, only: [:create]
  resources :users, only: [:show, :create, :edit, :update, :index]

  # usersコントローラーの編集画面関連のルーティング
  get 'users/:id/settings' => 'users#setting', as: 'user_setting'
  get 'users/:id/delete' => 'users#delete', as: 'user_delete'
  patch 'users/:id' => 'users#deleted', as: 'user_deleted'

  # contactコントローラのルーティング
  get 'contacts/:id' => 'contacts#contact', as: 'contact'
  post 'contacts/contact' => 'contacts#send_user', as: 'send'
  get 'contacts/sent' => 'contacts#sent_user', as: 'sent'

  # searchsコントローラーのルーティング
  get 'search/food' => 'searchs#search_food', as: 'search_food'
  get 'search/recipe' => 'searchs#search_recipe', as: 'search_recipe'

  #CSVインポート用のルーティング
  post 'import' => 'foods#import', as: 'import_foods'
  get 'import' => 'foods#data', as: 'import'
end