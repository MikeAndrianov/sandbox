module Core
  class Engine < ::Rails::Engine
    isolate_namespace Core

    # initializer 'core.add_middleware' do |app|
    #   app.middleware.use DomainPrefixSetter
    # end
  end
end
