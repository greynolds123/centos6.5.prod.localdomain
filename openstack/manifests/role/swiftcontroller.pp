class openstack::role::swiftcontroller inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::rabbitmq': } ->
  class { '::openstack::propuppet::memcache': } ->
  class { '::openstack::propuppet::mysql': } ->
  class { '::openstack::propuppet::keystone': } ->
  class { '::openstack::propuppet::swift::proxy': }
  class { '::openstack::propuppet::horizon': }
  class { '::openstack::propuppet::auth_file': }
  class { '::openstack::propuppet::nova::api': }
}
