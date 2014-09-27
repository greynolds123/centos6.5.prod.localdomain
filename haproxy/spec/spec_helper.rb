require 'rubygems'
require 'rspec-puppet'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
end

<<<<<<< HEAD
def centos_facts
=======
def rhel_facts
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  {
    :operatingsystem => 'CentOS',
    :osfamily        => 'RedHat',
  }
end

<<<<<<< HEAD
def debian_facts
  {
    :operatingsystem => 'Debian',
    :osfamily        => 'Debian',
  }
end
=======
#def debian_facts
  #{
    #:operatingsystem => 'Debian',
    #:osfamily        => 'Debian',
  #}
#end
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
