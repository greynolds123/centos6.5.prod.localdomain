class ldap::sudo-ldap {
      file { '/etc/sudo-ldap.conf':
        ensure  => present,
<<<<<<< HEAD
        owner   => "root",
        group   => "root",
        mode    => "0600",
=======
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        source  => templates('ldap/templates/sudo-ldap.erb'),
        require => Class['ldap::params']
      }
   }
