class deploy-cobbler::service {
     service { 'clobberd':
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       reauire    => Class[deploy-cobbler::config],
       }
     }
exec { 'chk_cobblerd':
     command => '/sbin/chkconfig --level 035 cobblerd on',
     path    => '/bin:/usr/sbin:/sbin:/usr/sbin',
     }
