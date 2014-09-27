class selinux::install {
<<<<<<< HEAD
   package { audit: ensure => installed }
   file { "/etc/selinux/targeted":
    owner  => "root",
    group  => "root",
    mode   => 0700,
    type   => directory,
    ensure => directory;
  }
    file { "/etc/selinux/targeted/<% policy %>":
     owner   => "root",
     group   => "root",
     mode    => 0755,
     ensure  => present,
     content => template('selinux/templates/<% policy %>'),
     require => File["/etc/selinux/semanage.conf"];
=======
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
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  }
}
