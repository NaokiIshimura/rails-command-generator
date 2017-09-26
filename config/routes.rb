Rails.application.routes.draw do
  get 'config/sqlite3'

  get 'config/mysql'

  get 'config/postgresql'

  get 'command/controller'
  get 'command/scaffold'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  # new
  get 'new' => 'command#new'
  post 'new/generate' => 'command#new_generate'

  # controller
  get 'controller' => 'command#controller'
  post 'controller/generate' => 'command#controller_generate'

  # model
  get 'model' => 'command#model'
  post 'model/generate' => 'command#model_generate'

  # scaffold
  get 'scaffold' => 'command#scaffold'
  post 'scaffold/generate' => 'command#scaffold_generate'
  
  # others
  get 'others' => 'command#others'
end
