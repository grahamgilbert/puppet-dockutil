# Puppet-Dockutil Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-dockutil.png?branch=master)](https://travis-ci.org/boxen/puppet-dockutil)

This module allows you to mange your dock using Kyle Crawford’s awesome dockutil.

## Usage

```puppet
dockutil::item { 'Add iTerm':
		item 	 => "/Applications/iTerm.app",
		label	     => "iTerm",
		action 	 => "add",
		position => 2,
	}
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
