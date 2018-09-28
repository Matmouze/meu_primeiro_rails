Rails.application.routes.draw do
  get 'shopping/new' => 'shopping#new' , as: 'shopping_new'
  
  get 'shopping/index' => 'shopping#index', as: 'shopping_index'
  
  get 'shopping/showOne/:id' => 'shopping#showOne', as: 'shopping_showOne'
  
  get 'shopping/edit/:id' => 'shopping#edit' , as: 'shopping_edit'
  
  post 'shopping/create' => 'shopping#create' , as: 'shopping_create'

  patch 'shopping/update/:id' => 'shopping#update' , as: 'shopping_update'
  
  delete 'shopping/destroy/:id' => 'shopping#destroy' , as: 'shopping_destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
