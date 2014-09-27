define selinux_bool($bool) {
<<<<<<< HEAD
      exec { "/usr/sbin/setsebool -P $name=$bool":
      unless => "/usr/sbin/getsebool $name | sestatus -b |grep $bool$",
      cwd => '/',
    }
 }
    selinux_bool { allow_httpd_mod_auth_pam:
=======
      exec { "/usr/sbin/setsebool -P ${name}=${bool}":
      unless => "/usr/sbin/getsebool ${name} | sestatus -b |grep ${bool}$",
      cwd    => '/',
    }
 }
    selinux_bool { 'allow_httpd_mod_auth_pam':
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      bool => on,
 }

