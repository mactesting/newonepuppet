class webserver::nginx {
	package { 'nginx':
		ensure => installed,
	}
}
