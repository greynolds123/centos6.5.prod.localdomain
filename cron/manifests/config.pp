class cron::config {
<<<<<<< HEAD
  cron { "clearCache":
   ensure  => present,
   user    => "root",
   command => "/bin/sh /root/clearCache.sh",
   hour => "0",
   minute => "45"
=======
  cron { 'clearCache':
   ensure  => present,
   user    => 'root',
   command => '/bin/sh /root/clearCache.sh',
   hour    => '2',
   minute  => '15'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
 }
}
