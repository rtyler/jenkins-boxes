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

  if $rvm_installed == "true" {
    rvm_system_ruby {
      'ruby-1.9.2-p290':
        ensure => 'present',
        default_use => false;
      'ruby-1.8.7-p352':
        ensure => 'present',
        default_use => true;
    }
  }
}

# vim: ts=2 et sw=2 autoindent
