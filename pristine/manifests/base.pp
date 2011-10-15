#
# Simple base box manifest


node default {
  include jenkins

  install-jenkins-plugin {
    "git-plugin" :
      name => "git",
      require => Class["jenkins"];

    "github-plugin" :
      name => "github",
      require => Class["jenkins"];
  }

  group {
    "puppet" :
      ensure => present;
  }
}

# vim: ts=2 et sw=2 autoindent
