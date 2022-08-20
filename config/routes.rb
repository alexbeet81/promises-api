Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: "users/sessions",
               registrations: "users/registrations",
             }
  root to: "pages#home"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :promise_lists, only: [:index, :show, :update, :create, :destroy]
    end
  end
end
