class openstack::role::controller inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::rabbitmq': } ->
  class { '::openstack::propuppet::memcache': } ->
  class { '::openstack::propuppet::mysql': } ->
  class { '::openstack::propuppet::mongodb': } ->
  class { '::openstack::propuppet::keystone': } ->
  class { '::openstack::propuppet::ceilometer::api': } ->
  class { '::openstack::propuppet::glance::auth': } ->
  class { '::openstack::propuppet::cinder::api': } ->
  class { '::openstack::propuppet::nova::api': } ->
  class { '::openstack::propuppet::neutron::server': } ->
  class { '::openstack::propuppet::heat::api': } ->
  class { '::openstack::propuppet::horizon': }
  class { '::openstack::propuppet::auth_file': }
}
