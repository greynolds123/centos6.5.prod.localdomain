class cron::config {
  cron { "clearCache":
   ensure  => present,
   user    => "root",
   command => "/bin/sh /root/clearCache.sh",
   hour => "2",
   minute => "15"
 }
}
