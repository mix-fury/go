Rails.application.routes.draw do
  devise_for :organizations
  devise_for :users

  root 'landing_page#index'


end
