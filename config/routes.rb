Rails.application.routes.draw do
  # devise_for :admins
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    get 'admins/sign_up' => 'admins/registrations#new', as: 'new_admin_registration'
    post 'admins' => 'admins/registrations#create', as: 'admin_registration'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'
  end

  devise_for :users, skip: :all
  devise_scope :user do
    get 'users/sign_in' => 'users/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'users/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'users/sessions#destroy', as: 'destroy_user_session'
    get 'users/sign_up' => 'users/registrations#new', as: 'new_user_registration'
    post 'users' => 'users/registrations#create', as: 'user_registration'
    get 'users/password/new' => 'users/passwords#new', as: 'new_user_password'
  end

  namespace 'users' do
    resources :users, only: [:edit, :update]
  end

  # resource :barcodes
  get 'barcodes/index'
  get 'barcodes/show'

  namespace 'admins' do
    resources :categories, only:[:index, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
