class nginx::deploy_nginx {
  file { '/tmp/linux_nginx.sh':
         ensure  => present,
         owner   => "root",
         group   => "root",
         mode    =>  750,
         source  => 'puppet:///moduless/nginx/linux_nginx.sh',
         }


      exec { "push_ngix-installer":
         command => "/bin/cp  ../files/linux_nginx.sh /tmp",
         path    => "/bin:/usr/bin:/sbin:/usr/sbin:",
         before  => "Exec['extract_nginx']",
         onlyif => 'grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0',
         }

      exec { "push_ngix-installer":
         command => "/bin /tmp/linux_nginx.sh /tmp",
         path    => "/bin:/usr/bin:/sbin:/usr/sbin",
         onlyif => 'grep -c /tmp/ /tmp/linux_nginx.sh && exit 1 || exit 0',
           }
          }
