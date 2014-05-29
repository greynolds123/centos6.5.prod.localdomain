class nginx::web {
     file {'/usr/share/nginx/':
     ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> master/master
     user    => 'root';
     owner   => 'root';
     mode    => 'root';    
     source  => template('nginx/web.erb');
=======
<<<<<<< HEAD
=======
>>>>>>> master/production
=======
>>>>>>> master/master
     user    => 'root',
     owner   => 'root',
     mode    => 'root',    
     source  => template('nginx/web.erb'),
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
=======
>>>>>>> master/production
=======
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
>>>>>>> master/master
     require => Class['nginx::config'],
      }
     }
