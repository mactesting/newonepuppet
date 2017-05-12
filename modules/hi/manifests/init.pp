class hi ($var1="coming from class definition"){
	file { '/root/hiera.txt':
		ensure => present,
		content => $var1,
	}
}
