Rails.application.routes.draw do
namespace :api do
  namespace :api do
    resources :users
    resources :bios
    resources :pictures
    resources :profiles
    end
  end
end
