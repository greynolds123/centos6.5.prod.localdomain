class openstack::propuppet::firewall {
  class { '::openstack::propuppet::firewall::pre': }
  class { '::openstack::propuppet::firewall::puppet': }
  class { '::openstack::propuppet::firewall::post': }
}
