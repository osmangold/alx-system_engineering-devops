#!/usr/bin/puppet
# configures ssh with puppet

include stdlib

file_line { 'nopwd':
  ensure => present,
  line   => 'PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}
file_line { 'identity':
  ensure => present,
  line   => 'IdentityFile ~/.ssh/holberton',
  path   => '/etc/ssh/ssh_config',
}
