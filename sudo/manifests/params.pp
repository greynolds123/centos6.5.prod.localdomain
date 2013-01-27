class sudo::parms {
    case $operatingsystem {
      Solsris {
       $sudo_package_name = 'sudo',
      }
      /(Redhat|Fedora)/: {
       $sudo_package_name = 'sudo',
     }
   }
}
