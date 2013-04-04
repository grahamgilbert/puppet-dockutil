# Puppet-Dockutil Module for Boxen

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
