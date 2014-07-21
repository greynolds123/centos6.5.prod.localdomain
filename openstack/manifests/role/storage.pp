class openstack::role::storage inherits ::openstack::role {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::glance::api': }
  class { '::openstack::propuppet::cinder::volume': }

  class { '::openstack::setup::cirros': }
}
