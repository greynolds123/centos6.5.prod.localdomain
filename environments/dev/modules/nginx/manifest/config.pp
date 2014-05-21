class nginx::config {
      files { '/etc/nginx':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'centos6.5.localdomain:///nginx/nginx.erb',
      #source  => template('nginx/default.erb'),
      require => Class['nginx::install'],
      notify  => Class['nginx::service'],
        }
      }
