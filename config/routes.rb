Rails.application.routes.draw do
  resources :plans
  get 'plans' => 'plans'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
