class selinux {
  include selinux::config, selinux::install, selinux::params, selinux:sebool, selinux::service
  } 

case $operatingsystem {
    'redhat' { include redhat }
    'fedora' { include fedora }
}

$owner = $operatingsystem ? {
    /(redhat|fedora)/  => '/sbin:/usr/sbin:/bin:/usr/bin
    default            => undef,
}

$system = $operatingsystem ? {
    /(redhat|fedora)/  => "our system is $1",
    default            => "our system is unknown"
}

