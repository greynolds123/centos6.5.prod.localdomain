class { 'openstack::nova::compute': 
  exported_resources   => false,
  sql_connection       => 'mysql://foo:bar@192.168.128.3/nova',
  glance_api_servers   => '192.168.128.3:9292',
  internal_address     => $::ipaddress_eth1,
  rabbit_password      => 'password',
  nova_user_password   => 'password',
  libvirt_type         => 'qemu',
  vncproxy_host        => '192.168.128.3',
}
