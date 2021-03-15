Rails.application.routes.draw do
  Rails.application.routes.default_url_options[:script_name] = '/myapp-test'

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Core::Engine => '/', as: :core
  mount Coverages::Engine => '/', as: :coverages
end
