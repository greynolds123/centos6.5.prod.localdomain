class mysql::params {
    case $operatingsystem {
       Solaris: {
        $mysql_package_name = "mysql"
        }
       '/(Ubuntu|Debian)/': {
        $mysql_package_name = "mysql"
       }
     }
   }
