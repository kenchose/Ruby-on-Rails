Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/1' => 'users#show'
  get 'users/1/edit' => 'users#edit'
  # patch 'users/1' => 'users#update'
  get 'users/total' => 'users#total'
end
