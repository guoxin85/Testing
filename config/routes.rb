Rails.application.routes.draw do
  resources :testapps
  get 'welcome/home'
  get 'welcome/about'
  get 'welcome/contact'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
