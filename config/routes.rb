# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'comments/new'
  get 'likes/index'
  get 'likes/show'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:new, :create]
    end
  end
  # root 'home#index'
  root to: "users#index"
end
