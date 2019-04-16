Rails.application.routes.draw do
  resources :question_question_texts
  resources :question_audios
  resources :question_texts
  resources :question_inputs
  resources :questions
  resources :question_types
  resources :content_resources
  resources :content_metadata
  resources :content_audios
  resources :user_contents
  resources :states
  resources :content_lists
  resources :user_bookmarks
  resources :contents
  resources :daisy_formats
  resources :categories
  resources :user_announcements
  resources :users
  resources :announcement_audios
  resources :announcement_texts
  resources :languages
  resources :announcements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id/activate', to: 'users#activate'
  get '/users/:id/deactivate', to: 'users#deactivate'
end
