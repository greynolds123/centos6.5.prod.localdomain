class nginx::config {
      file { '/etc/nginx/conf.d/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///modules/nginx/default.conf',
      require => Class['nginx::install'],
      notify  => Class['nginx::service'],
       }
      }
