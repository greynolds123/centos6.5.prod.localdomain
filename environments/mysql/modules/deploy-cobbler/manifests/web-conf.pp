class cobbler::web-conf {
     file { '/etc/httpd/conf.d/cobbler_web.conf':
     ensure  =>  present,
     owner   =>  root,
     group   =>  root,
     mode    =>  '0644',
     source  =>  template('/cobbler/templates/cobbler_web.conf.erb'),
     require =>  Class[cobbler::config],
     require =>  Class[cobbler::install],
     notify  =>  Class[cobbler::service]
     }
   }
