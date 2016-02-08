Rails.application.routes.draw do
  get 'test_email/send_email'

  devise_for :users

  scope "/:locale" do
    resources :projects do
      resources :assets, only: [:create]
      resources :tasks do
        resources :comments, only: [:create]
        member do
          patch :toggle
        end
      end
    end
  end
  root 'projects#index'
end
