node default {
	include helloworld
	include windowsfunctions

	windowsfunctions::port { 'elasticsearch':
		number => 9200,
	}

	windowsfunctions::mytype { 'this is the name':
		msg => 'hello my type',
		require => Windowsfunctions::Port['elasticsearch'],
	}

	file { 'c:/tmp/stuff.txt':
		source	           => 'puppet:///modules/stuff/stuff.txt',
		source_permissions => ignore,
	}
}