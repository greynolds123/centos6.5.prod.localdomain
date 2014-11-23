class utilities::config {
     file {'/root/manageSelinux.sh':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/manageSelinux.sh',
      }


     file {'/root/clearCache.sh':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/clearCache.sh',
      }


     file {'/root/remoteIPtables.sh':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => 0755,
      source  => 'file:///modules/utilities/remoteIPtbles.sh',
      }
     }
