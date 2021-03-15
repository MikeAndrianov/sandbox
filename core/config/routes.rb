Core::Engine.routes.draw do
  Core::Engine.routes.default_url_options[:script_name] = '/core-test'

  resources :articles
end
