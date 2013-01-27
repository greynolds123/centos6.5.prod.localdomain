class ntp::service {
       service { 'ntpd':
        enable     => running,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        require    => Class['ntp::config'],
        subscribe  => File['ntp.conf'],
        }
     }
