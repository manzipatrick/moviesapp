Rails.application.routes.draw do
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  patch 'resumes/edit'
 
  resources :resumes, only: [:index, :new, :create, :destroy, :edit]
   root "resumes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
