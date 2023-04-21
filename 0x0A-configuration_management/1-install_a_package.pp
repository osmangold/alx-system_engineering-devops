#!/usr/bin/puppet
# installs the puppet-lint package with version 2.1.1
package { 'puppet-lint':
    ensure   => '2.1.1',
    provider => 'gem'
}
