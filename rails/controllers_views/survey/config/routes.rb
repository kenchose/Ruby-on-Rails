Rails.application.routes.draw do
  get 'users' => 'users#index'
  post 'result' => 'users#result'
end
