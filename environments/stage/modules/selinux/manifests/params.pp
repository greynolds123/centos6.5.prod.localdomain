class selinux::params {
    case operatingsystem {
     Solaris: {
      $selinux_package_name = 'selinux'
    }
     /(Ubuntu|Debian)/: {
      $selinux_package_name = 'selinux'
    }
     /(RedHat|Fedora)/: {
      $selinux_package_name = 'selinux'
    }
  }
}
