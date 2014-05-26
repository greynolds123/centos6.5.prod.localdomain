class nginx::config {
      files { '/etc/nginx':
      ensure  => present,
<<<<<<< HEAD
      user    => 'root';
      group   => 'root';
      mode    => 0644,
      source  => template('nginx/default.erb');
      require => Class['nginx::install'],
      notify  => Class['nginx::service],
=======
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => template('nginx/default.erb'),
      require => Class['nginx::install'],
      notify  => Class['nginx::service'],
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
        }
      }
