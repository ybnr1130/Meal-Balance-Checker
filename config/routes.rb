Rails.application.routes.draw do
  get 'menu_recipes/create'
  get 'menu_foods/create'
  root to: 'homes#top'
  devise_for :users

  # resourcesを使用したルーティング
  resources :menus, except: [:show]
  resources :menu_foods, only: [:create]
  resources :menu_recipes, only: [:create]
  resources :recipes
  resources :recipe_foods, only: [:new, :create]
  resources :foods, only: [:create]
  resources :settings, only: [:index, :edit, :update]

  # settingsコントローラーのルーティング
  get 'settings/:id/delete' => 'settings#delete', as: 'setting_delete'
  delete 'settings/:id' => 'settings#deleted', as: 'setting_deleted'
  get 'settings/contact/:id' => 'settings#contact', as: 'contact'
  post 'settings/contact' => 'settings#send', as: 'send'

  # searchsコントローラーのルーティング
  get 'search/food' => 'searchs#search_food', as: 'search_food'
  get 'search/recipe' => 'searchs#search_recipe', as: 'search_recipe'

  # customersコントローラーのルーティング
  get 'customers/new' => 'customers#new', as: 'customers_info'
  post 'customers' => 'customers#create', as: 'customer'

  #CSVインポート用のルーティング
  post 'import' => 'foods#import', as: 'import_foods'
  get 'import' => 'foods#data', as: 'import'
end