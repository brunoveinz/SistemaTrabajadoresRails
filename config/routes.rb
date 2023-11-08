Rails.application.routes.draw do
  devise_for :users

  scope 'dashboard' do
    resources :workers
    resources :campaigns
    resources :candidates
  end 
  
  root "public#home"
  get "about", to: 'public#about', as: 'about' 
  get "contact", to: 'public#contact', as: 'contact'

  get "dashboard", to: 'private#dashboard', as: 'dashboard'

end
