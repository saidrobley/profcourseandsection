Rails.application.routes.draw do
  resources :enrollments
  resources :students
  devise_for :users
  resources :sections
  resources :courses
  resources :professors
  #root 'professors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "*path" => redirect('/')
  match '*path', to: redirect('/'), via: :all
end
