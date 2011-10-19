#
# Simple base box manifest

import "rvm"

node default {
  include rvm::system

  user {
    "jenkins" :
      ensure => present;
  }

  rvm::system_user {
    "jenkins" :
      require => User["jenkins"];
  }
}

# vim: ts=2 et sw=2 autoindent
