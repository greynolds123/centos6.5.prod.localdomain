<<<<<<< HEAD
class yum::config {   
   file { '/etc/yum.conf/':
    ensure  => true,
    owner   => "root",
    group   => "root",
    mode    => "0644",
=======
class yum::config {
   file { '/etc/yum.conf/':
    ensure  => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    source  => templates('yum/templates/yum.conf.erb'),
    require => Class['yum::install'],
    notify  => Class['yum::service']
    }
   }
