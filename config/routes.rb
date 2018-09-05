Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stocks, only: [:financials, :financials_show]
  get "financials", to: "stocks#financials", as: "financials"
  get "financials/:id", to: "stocks#financials_show", as: "stock"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
