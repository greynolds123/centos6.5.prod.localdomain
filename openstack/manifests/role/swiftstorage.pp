class openstack::role::swiftstorage (
  $zone = undef,
) inherits ::openstack::role  {
  class { '::openstack::propuppet::firewall': }
  class { '::openstack::propuppet::swift::storage': zone => $zone }
}
