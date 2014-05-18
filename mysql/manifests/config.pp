class mysql::config {
     file { '/etc/my.cnf':
     ensure  => present,
     owner   => mysql,
     group   => mysql,
     mode    => "0644",
     source  => template('mysql/templates/my.cf.erb'),
     require => Class['mysql::install'],
     notify  => Class['mysql::service']
   }

    file { '/var/lib/mysql/':
    owner   => mysql,
    group   => mysql,
    recurse => true,
    require => File['/etc/my.cnf'],
  }
}
