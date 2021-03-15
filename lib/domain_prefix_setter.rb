class DomainPrefixSetter
  def initialize(app)
   @app = app
  end

  def call(env)
    set_script_name!(env)

    @app.call(env)
  end

  private

  def set_script_name!(env)
    env['HTTP_X_PREFIX'] = '/fr-fr/d/catalog/'
    puts "W" * 100
    puts env['SCRIPT_NAME']
    puts env['HTTP_X_PREFIX']

    # binding.pry

    env['SCRIPT_NAME'] += env['HTTP_X_PREFIX'].to_s if env['HTTP_X_PREFIX'].present?
  end
end
