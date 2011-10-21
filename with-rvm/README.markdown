# with-rvm box

This box is based on jenkins-pristine. To create a good version of this box,
you basically have to provision it twice due to some suckage in the
[puppet-rvm](https://github.com/blt04/puppet-rvm) module. First pass installs
rvm, second pass installs the rubies that are necessary.

Sucks.

Anyhoo, it's pretty much just pristine + rvm with Ruby 1.8.7 and Ruby 1.9.2
installed.
