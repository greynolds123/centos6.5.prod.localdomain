class utilities::config {
     file {'/root/manageSelinux.sh':
<<<<<<< HEAD
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/manageSelinux.sh',
=======
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'file:///modules/utilities/manageSelinux.sh',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }


     file {'/root/clearCache.sh':
<<<<<<< HEAD
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/clearCache.sh',
=======
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'file:///modules/utilities/clearCache.sh',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }


     file {'/root/remoteIPtables.sh':
<<<<<<< HEAD
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/remoteIPtbles.sh',
      }
     
      exec { "run_selinux":
       command  => '/bin/sh /root/manageSelinux.sh',
       path     => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif   => "grep -c /root/ /root/manageSelinux.sh && exit 1 || exit 0"
     }


      exec { "run_clearcache":
       command  => '/bin/sh /root/clearCache.sh',
       path     => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif   => "grep -c /root/ /root/clearCache.sh && exit 1 || exit 0"
     }


      exec { "run_iptables":
       command  => '/bin/sh /root/remoteIPtables.sh',
       path     => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif   => "grep -c /root/ /root/remoteIPtables.sh && exit 1 || exit 0"
=======
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'file:///modules/utilities/remoteIPtbles.sh',
      }
     
      exec { 'run_selinux':
       command => '/bin/sh /root/manageSelinux.sh',
       path    => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif  => 'grep -c /root/ /root/manageSelinux.sh && exit 1 || exit 0'
     }


      exec { 'run_clearcache':
       command => '/bin/sh /root/clearCache.sh',
       path    => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif  => 'grep -c /root/ /root/clearCache.sh && exit 1 || exit 0'
     }


      exec { 'run_iptables':
       command => '/bin/sh /root/remoteIPtables.sh',
       path    => '/bin:/usr/bin:/sbin:/usr/sbin',
       onlyif  => 'grep -c /root/ /root/remoteIPtables.sh && exit 1 || exit 0'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }
