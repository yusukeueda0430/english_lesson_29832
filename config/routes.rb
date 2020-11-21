Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    registrations: 'teachers/registrations'
  }

  devise_scope :teacher do
    get "sign_in", :to => "teachers/sessions#new"
    get "sign_out", :to => "teachers/sessions#destroy" 
  end

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations'
  }

  devise_scope :student do
    get "sign_in", :to => "students/sessions#new"
    get "sign_out", :to => "students/sessions#destroy" 
  end

  root to: 'lessons#index'
  resources :lessons do
    resources :orders, only: [:index, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
