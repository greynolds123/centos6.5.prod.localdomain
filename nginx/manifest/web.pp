class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
     user    => 'root';
     owner   => 'root';
     mode    => 'root';    
     source  => template('nginx/web.erb');
=======
=======
>>>>>>> master/production
     user    => 'root',
     owner   => 'root',
     mode    => 'root',    
     source  => template('nginx/web.erb'),
<<<<<<< HEAD
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
=======
>>>>>>> master/production
     require => Class['nginx::config'],
      }
     }
