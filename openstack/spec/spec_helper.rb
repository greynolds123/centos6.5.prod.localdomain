<<<<<<< HEAD
require 'puppetlabs_spec_helper/module_spec_helper'
=======
dir = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift File.join(dir, 'lib')

require 'mocha'
require 'puppet'
require 'rspec'
require 'spec/autorun'

Spec::Runner.configure do |config|
    config.mock_with :mocha
end

# We need this because the RAL uses 'should' as a method.  This
# allows us the same behaviour but with a different method name.
class Object
    alias :must :should
end
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
