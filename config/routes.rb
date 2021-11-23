Rails.application.routes.draw do
  root 'top#index'

  resources :pit_documents, only: %i(new create show confirm)
  resources :pit_blocks, only: %i(create)
end
