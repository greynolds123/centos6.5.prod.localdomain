node default {
<<<<<<< HEAD
$domain = "centos7.prod.localdomain"}
=======
$domain = 'centos7.prod.localdomain'}
package {'centos7.prod.localdomain':
  ensure  => 'latest',
  }
include haproxy

>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
