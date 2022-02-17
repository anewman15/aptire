Rails.application.routes.draw do
  devise_for :user_accounts,
    only: [:registrations, :confirmations, :sessions],
    controllers: {
      registrations: 'user_accounts/registrations',
      confirmations: 'user_accounts/confirmations',
      sessions: 'user_accounts/sessions'
    },
    defaults: { format: :json }

  devise_for :company_accounts
    only: [:registrations, :confirmations, :sessions],
      controllers: {
        registrations: 'company_accounts/registrations',
        confirmations: 'company_accounts/confirmations',
        sessions: 'company_accounts/sessions'
      },
      defaults: { format: :json }
end
