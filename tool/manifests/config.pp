class tool::config {
     file {'/root/manageSelinux.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/manageSelinux.sh',
       }


      file {'/root/remoteIPtables.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/remoteIPtables.sh',
       }
      }
      
      exec { "remoteIPtables":
      command  => "/bin/sh /root/remoteIPtables.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/remoteIPtables.sh && exit 1 || exit 0"
        }
      
  
      file {'/root/clearCache.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/clearCache.sh',
      }


      exec { "ClearCache":
      command  => "/bin/sh /root/clearCache.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/clearCache.sh && exit 1 || exit 0"
      }
