Rails.application.routes.draw do
  resources :events
  resources :organizations
  root to: 'pages#index'
  get 'aboutus' => 'pages#aboutus'
  get 'volunteer' => 'pages#volunteer'
  get 'donate' => 'pages#donate'
  get 'sitemap' => 'pages#sitemap'

  devise_for :users, controllers: {
     sessions: 'users/sessions'
   }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
