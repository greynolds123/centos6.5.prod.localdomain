node base {
$domain = 'centos7.prod.localdomain'}
package {'centos7.prod.localdomain':
  ensure  => 'latest',
  }
include haproxy
