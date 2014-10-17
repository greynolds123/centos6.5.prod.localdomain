class cobbler::web-conf {
<<<<<<< HEAD
     file { "/etc/httpd/conf.d/cobbler_web.conf":
=======
     file { '/etc/httpd/conf.d/cobbler_web.conf':
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
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
