class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
<<<<<<< HEAD
     user    => 'root';
     owner   => 'root';
     mode    => 'root';    
     source  => template('nginx/web.erb');
=======
     user    => 'root',
     owner   => 'root',
     mode    => 'root',    
     source  => template('nginx/web.erb'),
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
     require => Class['nginx::config'],
      }
     }
