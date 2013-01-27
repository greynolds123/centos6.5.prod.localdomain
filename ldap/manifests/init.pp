class ldap {
   include ldap::config, ldap::install, ldap::params, ldap::server, ldap::service sudo-ldap.pp
}

case operatingsystem {
     'redhat' { include redhat }
     'fedora' { include fedora }
    }

$owner = $operatingsystem ? {
     /(Ubuntu|Debian)/:  => '/sbin:/usr/sbin:/bin:/usr/bin',
     default             => undef,
}

$system = $operatingsystem ? {
     /(redhat|fedora)/:  => "our system is $1",
     defaults            => "our system is unknown"
}       
