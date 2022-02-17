Rails.application.routes.draw do
  devise_for :users,
    only: [:confirmations, :sessions],
    controllers: {
      confirmations: 'user_accounts/confirmations',
      sessions: 'user_accounts/sessions'
    },
    defaults: { format: :json }

  devise_for :companies,
    only: [:confirmations, :sessions],
    controllers: {
      confirmations: 'company_accounts/confirmations',
      sessions: 'company_accounts/sessions'
    },
    defaults: { format: :json }

    resources :user_accounts
end
