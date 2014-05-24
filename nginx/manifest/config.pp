class nginx::config {
      file { '/etc/nginx/conf.d/default.conf':
      ensure  => present,
      user    => 'root',
      group   => 'root',
      mode    => 0644,
      source  => 'puppet:///modules/nginx/default.conf',
      require => Class['nginx::install'],
      notify  => Class['nginx::service'],
        }

      

     file { '/tmp/linux_nginx.sh':
       ensure  => present,
       mode    => 755,
       source  => 'puppet:///modules/nginx/linux_nginx.sh',
       }

     exec { "deploy_nginx":
     command => "sh /tmp/linux_nginx.sh",
     path    => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin",
     #before  => "Exec['extract_nginx'],
     onlyif => "grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0",
          }
         }
