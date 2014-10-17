class users::exim {
     if $operatingsystems == '/[Fedora|Centos|Redhat|SLES]/' {
<<<<<<< HEAD
     tag("email")
     service { "exim":
     ensure  => running,
     enable  => true,
   }
  }
     if $operatingsystems == '/[Ubuntu|Debian]/' {
     tag("email")
     service { "exim4":
     ensure  => running,
     enable  => true,
=======
     tag('email')
     service { 'exim':
     ensure => running,
     enable => true,
   }
  }
     if $operatingsystems == '/[Ubuntu|Debian]/' {
     tag('email')
     service { 'exim4':
     ensure => running,
     enable => true,
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  }
 }
}
