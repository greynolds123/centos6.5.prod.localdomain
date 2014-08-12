class webserver::nginx::virtual {
      files {'/etc/nginx/conf.d/virtual.comf':
      ensure  => present,
      owner   => "root",
      group   => "root",
      mode    => 0775,
      source  => 'puppet:///modules/webserver/virtual.conf',
      #source => template('webserver/virtual.conf.erb'),
       }
      }
