# Taken from the "Sample Usage :"
include bind::server
bind::server::conf { '/etc/named.conf':
<<<<<<< HEAD
  acls => {
    'rfc1918' => [ '10/8', '172.16/12', '192.168/16' ],
  },
  masters => {
    'mymasters' => [ '192.0.2.1', '198.51.100.1' ],
  },
  zones => {
=======
  acls     => {
    'rfc1918' => [ '10/8', '172.16/12', '192.168/16' ],
  },
  masters  => {
    'mymasters' => [ '192.0.2.1', '198.51.100.1' ],
  },
  zones    => {
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    'example.com' => [
      'type master',
      'file "example.com"',
    ],
    'example.org' => [
      'type slave',
      'file "slaves/example.org"',
      'masters { mymasters; }',
    ],
  },
  includes => [
    '/etc/myzones.conf',
  ],
}

