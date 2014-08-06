class openstack::role::tempest inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::tempest': }
  class { '::openstack::propuppet::auth_file': }
}
