Rails.application.routes.draw do
  resources :interview_types
  resources :languages
  resources :appointments
  resources :interviewees
  resources :interviewers
  resources :languages do
    collection do
      get 'get_interviewers', to: "appointments#get_interviewers"
    end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
