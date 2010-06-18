rack-php
========

A thoroughly pointless recreation of PHP's URL string Easter-egg for Rack. Just
in case you wanted to pretend your app was running on PHP.

Any URLs containing the magic query-string `=PHPE9568F36-D428-11d2-A769-00AA001ACF42`
will bypass the usual request path and instead generate the __MARK OF THE BEAST__.
Here's how:

    require 'lib/rack_php'

    class Useless
      def call(env)
        [200, {"Content-Type" => "text/plain"}, env['REQUEST_URI']]
      end
    end

    use RackPhp
    run Useless.new
    
Gem Installation
----------------

Not likely.