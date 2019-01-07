Rails.application.routes.draw do
  get 'dojos' => 'dojos#index'

  get 'dojos/new' => 'dojos#new'

  post 'dojos/create' => 'dojos#create'

  get 'dojos/show/:id' => 'dojos#show'

  # get 'dojos/edit'

  # get 'dojos/update'

  # get 'dojos/destroy'

end
