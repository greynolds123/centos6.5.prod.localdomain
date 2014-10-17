#
class mysql::server::mysqltuner($ensure='present') {
  # mysql performance tester
  file { '/usr/local/bin/mysqltuner':
<<<<<<< HEAD
    ensure  => $ensure,
    mode    => '0550',
    source  => 'puppet:///modules/mysql/mysqltuner.pl',
=======
    ensure => $ensure,
    mode   => '0550',
    source => 'puppet:///modules/mysql/mysqltuner.pl',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  }
}
