class webserver::virtual {
    file { '/etc/nginx/conf.d/virtual.conf':
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => 0755,
    source => 'file:///modules/nginx/virtual.conf'
     }
    }
