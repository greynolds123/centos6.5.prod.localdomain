class webserver::nginx::web {
     file {'/usr/share/nginx/html/index.html':
     ensure  => present,
     user    => 'root',
     owner   => 'root',
<<<<<<< HEAD
     mode    => 0755,
     source  => 'file:///modules/webserver/index.html',    
=======
     mode    => '0755',
     source  => 'file:///modules/webserver/index.html',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     require => Class['webserver::nginx::config']
      }
     }

     file { '/usr/share/nginx/logs':
<<<<<<< HEAD
     ensure  => "directory",
     mode    => 0755,
=======
     ensure => 'directory',
     mode   => '0755',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     }

