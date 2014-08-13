class nagios::install {
     package { 'nagios':
      ensure  => installed,
      alias   => 'nagios',;
       }
      }
