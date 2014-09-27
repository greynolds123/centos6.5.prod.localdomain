class utilities::config {
     file {'/root/manageSelinux.sh':
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'file:///modules/utilities/manageSelinux.sh',
      }


     file {'/root/clearCache.sh':
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0755',
      source => 'file:///modules/utilities/clearCache.sh',
      }


     file {'/root/remoteIPtables.sh':
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
      }
     }
