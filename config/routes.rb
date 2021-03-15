Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Core::Engine => '/', as: :core
  mount Coverages::Engine => '/', as: :coverages
end
