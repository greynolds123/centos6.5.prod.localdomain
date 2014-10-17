# == Class haproxy::install
#
class haproxy::install {
  package { $::haproxy::pkg_list:
    ensure => $::haproxy::pkg_ensure,
  }

<<<<<<< HEAD
  if $::haproxy::pkg_deps {
=======
   if $::haproxy::pkg_deps {
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    package { $::haproxy::pkg_deps:
      ensure => $::haproxy::pkg_ensure,
      before => Package[$::haproxy::pkg_list],
    }
  }
}

