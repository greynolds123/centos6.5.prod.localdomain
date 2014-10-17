class webserver::nginx::ssl {
    file {'/etc/nginx/default.conf/ssl.conf':
<<<<<<< HEAD
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.conf',
=======
     ensure => present,
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/webserver/ssl.conf',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     #source  => template('webserver/ssl.conf.erb'),
      }
     }

    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
<<<<<<< HEAD
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.pem',
=======
     ensure => present,
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/webserver/ssl.pem',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     #source  => template('webserver/ssl.pem.erb'),
      }


     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
<<<<<<< HEAD
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.key',
=======
     ensure => present,
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/webserver/ssl.key',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     #source  => template('webserver/ssl.key.erb'),
      }
  

