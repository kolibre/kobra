Rails.application.routes.draw do
  resources :user_logs
  resources :question_question_texts
  resources :question_audios
  resources :question_texts
  resources :question_inputs
  resources :questions
  resources :question_types
  resources :user_contents
  resources :states
  resources :content_lists
  resources :user_bookmarks
  resources :contents do
    resources :content_audios, except: %i[update show index create]
    resources :content_resources, except: %i[update show index]
    resources :content_metadata, except: %i[update show index]
  end
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
  post 'contents/:content_id/audio', to: 'content_audios#create'
  post 'contents/:content_id/resource', to: 'content_resources#create'
end
