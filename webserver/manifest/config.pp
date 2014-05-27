class webserver::config {
      files { '/etc/nginx/conf.d/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///modules/webserver/default.conf',
      require => Class['webserver::install'],
      notify  => Class['webserver::service'],
        }
      }
