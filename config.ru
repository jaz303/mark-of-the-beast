require 'lib/rack_php'

class Useless
  def call(env)
    [200, {"Content-Type" => "text/plain"}, env['REQUEST_URI']]
  end
end

use RackPhp
run Useless.new