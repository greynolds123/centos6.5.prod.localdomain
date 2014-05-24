class users::produsers {
    file { "/tmp/produsers.sh":
      ensure  => present,
      owner   => "root",
      group   => "root",
      mode    => 0644,
      source  => 'puppet:///modules/users/produsers.sh',
      }

    exec { "produsers":
      command  => "/bin/sh /tmp/produsers.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif  => 'grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0',
      }
     }
