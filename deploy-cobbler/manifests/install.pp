class deploy-cobbler::install {
     package { "cobbler":
      ensure  => install
       }
    }

exec { "correct_authn":
      command  => "perl -pi -w -e 's/authn_denyall/authn_configfile/g' /etc/cobbler/modules.conf",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
exec { "correct_ip":
       command  => "perl -pi -w -e 's/127.0.0.1/192.168.128.128/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
exec { "correct_pxeboot":
       command  => "perl -pi -w -e 's/pxe_just_once: 0/pxe_just_once: 1/g' /etc/cobbler/settings",       
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
exec { "correct_annamon":
       command  => "perl -pi -w -e 's/anamon_enable: 0/ anamon_enable: 1/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
