Rails.application.routes.draw do
  resources :interviewer_languages
  resources :languages
  resources :appointments
  resources :interviewees
  resources :interviewers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end