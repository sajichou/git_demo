Rails.application.routes.draw do


  devise_for :teachers
  devise_for :users


  root 'home#index'

  get 'cours/create'

  post 'cours/create' => 'cours#new'

  get 'cours/show'

  get 'cours/update'

  get 'cours/destroy'

  delete'cours/index' => 'cours#destroy'

  get 'cours/index'

  root 'cours#index'

  get 'cours' => 'cours#index'

  get 'cours/accueil'

  post 'cours/accueil' =>'cours#search'

  get 'cours/search'

  get 'cours/inscription'

  get 'cours/:id' => 'cours#show'

  get 'pages/monespace' 





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
