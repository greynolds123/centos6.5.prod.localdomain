define apache::vhostbak ( $port, $dcroot, $ssl=true, $template='apache/templates/vhost.conf.erb', $priority, $serveraliases = "") {
     file { '/opt/puppet/var/www/%(priority}-${name}':
       content  => templates($template),
       owner    => 'root',
       group    => 'root',
       mode     => '0644',
       require  => Class['apache::install'],
       notify   => Class['apache::service']
       }
     }     
