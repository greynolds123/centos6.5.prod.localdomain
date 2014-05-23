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

      exec { "deploy_nginx":
         command => "/bin/sh /tmp/linux_nginx.sh",
         path    => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin",
         before  => "Exec['extract_nginx'],
         onlyif => "grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0",
          }
         }





      file { '/usr/share/nginx/logs':
         ensure  => "directory",
         owner   => "root",
         group   => "root",
         mode    => 750,
       }
      }
