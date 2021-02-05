Rails.application.routes.draw do
namespace :api do
  namespace :api do
    resources :user
    resources :bios
    resources :pictures
    resources :profile
    end
  end
end
