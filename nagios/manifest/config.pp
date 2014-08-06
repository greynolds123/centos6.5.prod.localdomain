class nagios::config {
     file { "/etc/nagios/nagios.cfg":
     ensure  => present,
     owner   => 'root',
     group   => 'root', 
     mode    => 0755,
     notify  => Class['nagios::service'],
      }

     file { "/etc/hosts.conf":
     notify  => Class['nagios::service'],
      } 
     }
