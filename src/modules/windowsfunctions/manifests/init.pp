class windowsfunctions {
	file { "c:/powershell_scripts":
		ensure => directory,	
	}

	file { "c:/powershell_scripts/portmanager.ps1":
		source             => "puppet:///modules/windowsfunctions/portmanager.ps1",
		mode   	           => '0774',
		ensure             => file,
		source_permissions => ignore,
		require            => File['c:/powershell_scripts'],
	}

	define mytype($msg, $withdefault = 'yolo') {
		notify { "$name $msg $withdefault": }
	}

	define port($number) {
		notify {"Port configuration $name": }
		notify {"Port number: $number": }
		exec {"configure_port_$name":
			command   => "c:/powershell_scripts/portmanager.ps1 -name $name -port $number", 
			logoutput => true,
			require   => File['c:/powershell_scripts/portmanager.ps1'],
			provider  => powershell,
		}
	}
}