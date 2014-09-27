class history::config {
<<<<<<< HEAD
    file { "/etc/profile.d/history.sh":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    =>  0644,
    source  => 'puppet:///modules/history/history.sh',
=======
    file { '/etc/profile.d/history.sh':
    ensure => present,
    owner  => root,
    group  => root,
    mode   =>  '0644',
    source => 'puppet:///modules/history/history.sh',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     }
    }


<<<<<<< HEAD
exec { "history_edit":
      command  => "/bin/sh /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif   => "grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0"
=======
exec { 'history_edit':
      command => '/bin/sh /etc/profile.d/history.sh',
      path    => '/bin:/usr/bin:/sbin:/usr/sbin',
      onlyif  => 'grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
