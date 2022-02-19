Rails.application.routes.draw do
  devise_for :users,
    only: [:confirmations, :sessions],
    controllers: {
      confirmations: 'users/confirmations',
      sessions: 'users/sessions'
    },
    defaults: { format: :json }

  devise_for :companies,
    only: [:confirmations, :sessions],
    controllers: {
      confirmations: 'companies/confirmations',
      sessions: 'companies/sessions'
    },
    defaults: { format: :json }

    resources :users
end
