#!/usr/bin/puppet
# creates a file with some content and permissions
file { '/tmp/holberton':
    ensure  => 'present',
    replace => 'no',
    content => 'I love Puppet',
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
}
