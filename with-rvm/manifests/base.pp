#
# Simple base box manifest

import "rvm"

node default {
  include rvm::system

  $ruby_18 = "ruby-1.8.7-p352"
  $ruby_19 = "ruby-1.9.2-p290"

  user {
    "jenkins" :
      ensure => present;
    "vagrant" :
      ensure => present;
  }

  rvm::system_user {
    "jenkins" :
      require => User["jenkins"];

    "vagrant" :
      require => User["vagrant"];
  }

  if $rvm_installed == "true" {
    notice("Building Rubies..")
    rvm_system_ruby {
      "$ruby_19" :
        ensure => "present",
        require => Exec["system-rvm"],
        default_use => false;
      "$ruby_18" :
        ensure => "present",
        require => Exec["system-rvm"],
        default_use => true;
    }
  }
}
# vim: ts=2 et sw=2 autoindent
