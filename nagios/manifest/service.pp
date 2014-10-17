class nagios::service {
     service { 'nagios':
<<<<<<< HEAD
     ensure      => running,
     hasrestart  => true,
     hasstatus   => true,
     enable      => true,
     require     => Package[nagios],
=======
     ensure     => running,
     hasrestart => true,
     hasstatus  => true,
     enable     => true,
     require    => Package[nagios],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }

