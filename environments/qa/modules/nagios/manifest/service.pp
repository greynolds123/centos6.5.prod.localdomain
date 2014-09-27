class nagios::service {
     service { 'nagios':
     ensure     => running,
     hasrestart => true,
     hasstatus  => true,
     enable     => true,
     require    => Package[nagios],
      }
     }

