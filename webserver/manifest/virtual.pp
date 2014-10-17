class webserver::nginx::virtual {
      files {'/etc/nginx/conf.d/virtual.comf':
<<<<<<< HEAD
      ensure  => present,
      owner   => "root",
      group   => "root",
      mode    => 0775,
      source  => 'puppet:///modules/webserver/virtual.conf',
=======
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => 0775,
      source => 'puppet:///modules/webserver/virtual.conf',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      #source => template('webserver/virtual.conf.erb'),
       }
      }
