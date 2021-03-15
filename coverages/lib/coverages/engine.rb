module Coverages
  class Engine < ::Rails::Engine
    isolate_namespace Coverages

    # initializer 'coverages.add_middleware' do |app|
    #   app.middleware.use DomainPrefixSetter
    # end
    middleware.use DomainPrefixSetter
  end
end
