Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 mount ActionCable.server => '/cable'
  root 'chats#index'
  #temporary root path for now

    resources :users, only:[:new, :create]
    resources :chats, only:[:index, :show, :create]
    resources :sessions, only:[:new, :destroy, :create]
    resources :messages, only:[:create]
end
