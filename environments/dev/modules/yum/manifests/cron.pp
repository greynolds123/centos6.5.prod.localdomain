class yum::cron {
    service { "yum-cron":
      ensure     => present,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class['yum::config'],
      require    => Class['yum::params']
      }
   }
   
