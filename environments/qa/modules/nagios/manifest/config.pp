class nagios::config {
     file { '/etc/nagios/nagios.cfg':
     ensure => present,
     owner  => 'root',
     group  => 'root',
     mode   => '0755',
     notify => Class['nagios::service'],
      }
     }

     #define nagios::config {
     #Nagios_host         <<||>>
     #Nagios_service      <<||>>
     #Nagios_hostextinfo  <<||>>
     #}
 
