class nagios::config {
<<<<<<< HEAD
     file { "/etc/nagios/nagios.cfg":
     ensure  => present,
     owner   => 'root',
     group   => 'root', 
     mode    => 0755,
     notify  => Class['nagios::service'],
=======
     file { '/etc/nagios/nagios.cfg':
     ensure => present,
     owner  => 'root',
     group  => 'root',
     mode   => '0755',
     notify => Class['nagios::service'],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }

     #define nagios::config {
     #Nagios_host         <<||>>
     #Nagios_service      <<||>>
     #Nagios_hostextinfo  <<||>>
     #}
 
