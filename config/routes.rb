Rails.application.routes.draw do
  root 'top#index'

  resources :pit_documents, only: %i(new create show)
  resources :pit_blocks, only: %i(create)

  # TODO: モーダルが呼び出せるようになったら不要になる
  get '/confirm', to: 'pit_documents#confirm'
end
