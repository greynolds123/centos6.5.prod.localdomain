class openstack::cinder(
  $sql_connection,
  $rabbit_password,
<<<<<<< HEAD
  $rabbit_host     = '127.0.0.1',
=======
  $rabbit_host     = '192.168.153.155',
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
  $volume_group    = 'nova-volumes',
  $enabled         = true
) {

  class { 'cinder::base':
    rabbit_password => $rabbit_password,
    rabbit_host     => $rabbit_host,
    sql_connection  => $sql_connection,
    verbose         => $verbose,
  }

  # Install / configure nova-volume
  class { 'cinder::volume':
    enabled => $enabled,
  }
  if $enabled {
    class { 'cinder::volume::iscsi':
      volume_group     => $volume_group,
    }
  }
}
