Rails.application.routes.draw do
  get 'pages/index'
  resources :bank_accounts do

  end

  namespace :api do
    namespace :v1 do
      post 'bank_accounts/new_transaction', to: 'bank_accounts#new_transaction'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"
end
