class deploy-cobbler::web-conf {
     file { "/etc/httpd/conf.d/cobbler.conf":
     ensure  =>  present,
     owner   =>  root,
     group   =>  root,
     mode    =>  '0644',
     source  =>  'file:///modules/deploy-cobbler/cobbler.conf',
     #source  =>  template('deploy-cobbler/cobbler.conf'),
     require =>  Class['cobbler::config'],
     notify  =>  Class['cobbler::service']
     }
   }
