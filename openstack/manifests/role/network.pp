class openstack::role::network inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::neutron::router': }
  class { '::openstack::setup::sharednetwork': }
}
