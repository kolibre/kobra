Rails.application.routes.draw do
  resources :user_logs
  resources :question_question_texts
  resources :question_audios
  resources :question_texts
  resources :question_inputs
  resources :questions
  resources :question_types, except: %i[create update destroy]
  resources :user_contents
  resources :states, except: %i[create update destroy]
  resources :content_lists, except: %i[create update destroy]
  resources :user_bookmarks
  resources :contents do
    resources :content_audios, except: %i[update show index create]
    resources :content_resources, except: %i[update show index]
    resources :content_metadata, except: %i[update show index]
  end
  resources :daisy_formats, except: %i[create update destroy]
  resources :categories, except: %i[create update destroy]
  resources :user_announcements
  resources :users
  resources :announcement_audios
  resources :announcement_texts
  resources :languages, except: %i[create update destroy]
  resources :announcements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id/activate', to: 'users#activate'
  get '/users/:id/deactivate', to: 'users#deactivate'
  post 'contents/:content_id/audio', to: 'content_audios#create'
  post 'contents/:content_id/resource', to: 'content_resources#create'
  post '/user_contents/add', to: 'user_contents#add'
  post '/user_contents/remove', to: 'user_contents#remove'
end
