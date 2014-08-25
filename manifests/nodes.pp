node 'cookbook2', 'cloud01' {
	file { 'tmp/hello':
		content => "Hello, world\n",
	}
}
