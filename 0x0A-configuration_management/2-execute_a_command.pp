#!/usr/bin/puppet
# executes shell command pkill on killmenow process
exec { 'pkill':
    command => 'pkill killmenow',
    path    => '/usr/bin/:/bin/',
}
