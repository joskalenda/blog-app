# frozen_string_literal: true

Rails.application.routes.draw do
  get 'comments/new'
  get 'likes/index'
  get 'likes/show'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
  root 'home#index'
end
