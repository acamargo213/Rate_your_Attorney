Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'law_offices#search'
  resources :ratings
  resources :law_offices do
    collection do
      get :search
    end
  end
end
