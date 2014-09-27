class selinux::install {
   package { 'audit': ensure => installed }
   file { '/etc/selinux/targeted':
    owner  => 'root',
    group  => 'root',
    mode   => '0700',
    type   => directory,
    ensure => directory;
  }
    file { '/etc/selinux/targeted/<% policy %>':
     owner   => 'root',
     group   => 'root',
     mode    => '0755',
     ensure  => present,
     content => template('selinux/<% policy %>'),
     require => File['/etc/selinux/semanage.conf'];
  }
}
