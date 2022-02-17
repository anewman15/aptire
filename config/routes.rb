Rails.application.routes.draw do
  devise_for :user_accounts
  devise_for :company_accounts
end
