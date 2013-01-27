class ntp {
  install ntp::config, ntp::install, ntp::params, ntp::service
}

 case $operatingsystem {
      'redhat': { include redhat }
      'fedora': { include fedora }
}

$owner = $operatingsystem ? {
       /(redhat|fedora)/ => '/bin:/usr/sbin:/bin:/usr/bin',
       default           => undef,
}

$system = $operatingsystem ? {
       /(redhat|fedora)/ => "our system is $1",
       default           => undef,
}
