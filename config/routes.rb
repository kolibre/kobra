Rails.application.routes.draw do
  resources :users
  resources :announcement_audios
  resources :announcement_texts
  resources :languages
  resources :announcements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
