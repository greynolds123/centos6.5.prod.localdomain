class deploy-cobbler::install {
<<<<<<< HEAD
     package {  "cobbler":,        
         ensure  => install,
        }

     packages { "tftp":,
        ensure  => install,
     }

     packages { "tftp":,
        ensure  => install,
     }

     packages { "rsync":,
        ensure  => install,
     }
     
     packages { "bind":,
        ensure  => install,
     }
     
     packages { "dhcp":,
=======
     package {  'cobbler':,
         ensure  => install,
        }

     packages { 'tftp':,
        ensure  => install,
     }

     packages { 'tftp':,
        ensure  => install,
     }

     packages { 'rsync':,
        ensure  => install,
     }
     
     packages { 'bind':,
        ensure  => install,
     }
     
     packages { 'dhcp':,
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        ensure  => install,
     }
  }

<<<<<<< HEAD
    exec { "correct_authn":
      command  => "perl -pi -w -e 's/authn_denyall/authn_configfile/g' /etc/cobbler/modules.conf",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_ip":
       command  => "perl -pi -w -e 's/127.0.0.1/192.168.128.130/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_pxeboot":
       command  => "perl -pi -w -e 's/pxe_just_once: 0/pxe_just_once: 1/g' /etc/cobbler/settings",       
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_annamon":
       command  => "perl -pi -w -e 's/anamon_enable: 0/ anamon_enable: 1/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
=======
    exec { 'correct_authn':
      command => "perl -pi -w -e 's/authn_denyall/authn_configfile/g' /etc/cobbler/modules.conf",
      path    => '/bin:/usr/bin:/sbin:/usr/sbin'
     }
    exec { 'correct_ip':
       command => "perl -pi -w -e 's/127.0.0.1/192.168.128.130/g' /etc/cobbler/settings",
       path    => '/bin:/usr/bin:/sbin:/usr/sbin'
     }
    exec { 'correct_pxeboot':
       command => "perl -pi -w -e 's/pxe_just_once: 0/pxe_just_once: 1/g' /etc/cobbler/settings",
       path    => '/bin:/usr/bin:/sbin:/usr/sbin'
     }
    exec { 'correct_annamon':
       command => "perl -pi -w -e 's/anamon_enable: 0/ anamon_enable: 1/g' /etc/cobbler/settings",
       path    => '/bin:/usr/bin:/sbin:/usr/sbin'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     }
