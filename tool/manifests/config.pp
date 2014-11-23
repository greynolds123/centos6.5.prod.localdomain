class tool::config {
     file {'/root/manageSelinux.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/manageSelinux.sh',
       }

# Rhel firewall executable
      
      file {'/root/remoteIPtables.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/remoteIPtables.sh',
       }
      }
     
      exec {'Flush_IPtables':
      command => '/sbin/iptables --flush',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      before  => Exec['remoteIPtables']
       }

      exec {'remoteIPtables':
      command => '/bin/sh /root/remoteIPtables.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/remoteIPtables.sh && exit 1 || exit 0'
       }
  
# Ubuntu firewall executable

     file {'/root/remoteIPtables-ubuntu.sh':,
      ensure  => present,
      source  => 'puppet:///modules/tool/remoteIPtables-ubuntu.sh',
       }

      if $operatingsystems == '/[Ubuntu|Debian]/' {
      exec {'Flush_Ubuntu_IPtables':
      command => '/sbin/iptables --flush',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      before  => Exec['remoteIPtables-ubuntu']
       }
      }

      if $operatingsystems == '/[Ubuntu|Debian]/' {
      exec {'remoteIPtables-ubuntu':
      command => '/bin/sh /root/remoteIPtables-ubuntu.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/remoteIPtables-ubuntu.sh && exit 1 || exit 0'
        }
       }

# Clear cache

     file {'/root/clearCache.sh':,
      ensure => present,
      source => 'puppet:///modules/tool/clearCache.sh',
      }

      exec { 'ClearCache':
      command => '/bin/sh /root/clearCache.sh',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
      onlyif  => 'grep -c /root/ /root/clearCache.sh && exit 1 || exit 0'
      }

