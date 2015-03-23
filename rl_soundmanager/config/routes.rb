Rails.application.routes.draw do



  

  #setting the first page 
  root 'static_pages#home'
  
  get    'help'    =>    'static_pages#help'
  get    'about'   =>    'static_pages#about'
  get    'contact' =>    'static_pages#contact'
  get    'signup'  =>    'users#new'
  get    'login'   =>    'sessions#new'
  post   'login'   =>    'sessions#create'
  delete 'logout'  =>    'sessions#destroy'
	get    'music_list'    =>    'music_lists#new'
  resources :users
  resources :music_lists

 

end

  
