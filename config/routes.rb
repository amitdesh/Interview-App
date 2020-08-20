Rails.application.routes.draw do
  resources :interview_types
  resources :languages
  resources :appointments
  resources :interviewees
  resources :interviewers
  get '/homepages', to: 'homepages#index', as: 'welcome'
  delete '/sessions/logout_interviewee', to: 'sessions#logout_interviewee', as: 'logout_interviewee'
  get '/sessions/new', to: 'sessions#new', as: 'new_interviewee_login'
  post '/sessions/create', to:'sessions#create', as: 'interviewee_login'
  delete '/sessions/logout_interviewer', to: 'sessions#logout_interviewer', as: 'logout_interviewer'
  get '/sessions/new_int', to: 'sessions#new_int', as: 'new_interviewer_login'
  post '/sessions/create_int', to:'sessions#create_int', as: 'interviewer_login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
