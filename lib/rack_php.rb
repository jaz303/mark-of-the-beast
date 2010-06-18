class RackPhp
  def initialize(app)
    @app = app
  end
  
  def call(env)
    if env['QUERY_STRING'] == '=PHPE9568F36-D428-11d2-A769-00AA001ACF42'
      [ 200,
        {"Content-Type" => "image/gif"},
        File.read(File.dirname(__FILE__) + '/php.gif')
      ]
    else
      @app.call(env)
    end
  end
end