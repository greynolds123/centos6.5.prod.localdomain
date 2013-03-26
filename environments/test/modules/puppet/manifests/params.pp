class puppet::params {
   case $operatingsystem {
    Solaris: {
      $puppet_package_name = 'pe-puppet'
    }
    /(Ubuntu|Debian)/: {
      $puppet_package_name = 'pe-puppet'
    }
    /(RedHat|Centos|Fedora)/: {
      $puppet_package_name = 'pe-puppet'
    }
  }
}
     
