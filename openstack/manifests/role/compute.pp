class openstack::role::compute inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::neutron::agent': }
  class { '::openstack::propuppet::nova::compute': }
  class { '::openstack::propuppet::ceilometer::agent': }
}
