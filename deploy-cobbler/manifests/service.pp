class deploy-cobbler::service {
<<<<<<< HEAD
     service { "clobberd":
=======
     service { 'clobberd':
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       reauire    => Class[deploy-cobbler::config],
       }
     }
<<<<<<< HEAD
exec { "chk_cobblerd":
     command  => "/sbin/chkconfig --level 035 cobblerd on",
     path     => "/bin:/usr/sbin:/sbin:/usr/sbin",
=======
exec { 'chk_cobblerd':
     command => '/sbin/chkconfig --level 035 cobblerd on',
     path    => '/bin:/usr/sbin:/sbin:/usr/sbin',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     }
