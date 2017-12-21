Rails.application.routes.draw do
  namespace :api do
    resources :dreams, except: [:new, :edit]
  end
end
