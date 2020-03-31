Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "courses#index"
  get  'new', to: 'courses#new'
  get 'about', to: "pages#about"
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  post 'course_enroll', to: 'course_students#create'

  resources :students, except: [:destroy]
end
