Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :promise_lists, only: [:index]
    end
  end
end
