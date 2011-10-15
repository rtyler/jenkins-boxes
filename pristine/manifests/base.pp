#
# Simple base box manifest


node default {
  include jenkins

  group {
    "puppet" :
      ensure => present;
  }
}
