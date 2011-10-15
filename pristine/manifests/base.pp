#
# Simple base box manifest


node default {
  include jenkins

  install-jenkins-plugin {
    "git-plugin" :
      name => "git",
      require => Class["jenkins::package"];

    "github-plugin" :
      name => "github",
      require => Class["jenkins::package"];
  }

  group {
    "puppet" :
      ensure => present;
  }
}

# vim: ts=2 et sw=2 autoindent
