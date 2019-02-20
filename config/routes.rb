Rails.application.routes.draw do
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
end
