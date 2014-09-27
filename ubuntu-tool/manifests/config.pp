class ubuntu-tool::config {
     file {'/root/manageSelinux.sh':,
<<<<<<< HEAD
      ensure  => present,
      source  => 'puppet:///modules/tool/manageSelinux.sh',
=======
      ensure => present,
      source => 'puppet:///modules/tool/manageSelinux.sh',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
       }



file {'/root/remoteIPtables-ubuntu.sh':,
<<<<<<< HEAD
      ensure  => present,
      source  => 'puppet:///modules/tool/remoteIPtables-ubuntu.sh',
=======
      ensure => present,
      source => 'puppet:///modules/tool/remoteIPtables-ubuntu.sh',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        }
       }
      }

<<<<<<< HEAD
      exec { "remoteIPtables-ubuntu":
      command  => "/bin/sh /root/remoteIPtables-ubuntu.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/remoteIPtables-ubuntu.sh && exit 1 || exit 0"
=======
      exec { 'remoteIPtables-ubuntu':
      command => '/bin/sh /root/remoteIPtables-ubuntu.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/remoteIPtables-ubuntu.sh && exit 1 || exit 0'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
       }


  
      file {'/root/clearCache.sh':,
<<<<<<< HEAD
      ensure  => present,
      source  => 'puppet:///modules/tool/clearCache.sh',
      }


      exec { "ClearCache":
      command  => "/bin/sh /root/clearCache.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/clearCache.sh && exit 1 || exit 0"
=======
      ensure => present,
      source => 'puppet:///modules/tool/clearCache.sh',
      }


      exec { 'ClearCache':
      command => '/bin/sh /root/clearCache.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/clearCache.sh && exit 1 || exit 0'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
