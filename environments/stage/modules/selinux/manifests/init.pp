class selinux {
  include selinux::config, selinux::install, selinux::params, selinux::sebool, selinux::service
  }
