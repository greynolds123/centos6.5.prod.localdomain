class deploy_nginx::config {
      file { '/etc/deploy_nginx/conf.d/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///modules/deploy_nginx/default.conf',
      require => Class['deploy_nginx::install'],
      notify  => Class['deploy_nginx::service'],
       }
      }
