class webserver::nginx::config {
      files { '/etc/nginx/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///modules/webserver/default.conf',
      #source  => template('webserver/default.erb');
      require => Class['webserver::nginx::install'],
      notify  => Class['webserver::nginx::service']
        }
      }
