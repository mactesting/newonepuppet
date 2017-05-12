class nginxwebserver {
	service { 'nginx':
		ensure => running,
		enable => true,
		require => Package['nginx'],
	}
	file { '/usr/share/nginx/html/index.html':
		ensure => present,
		content => template('nginxwebserver/index.html.erb'),
		notify => Service['nginx'],
	}
	package { 'nginx':
		ensure => installed,
	}
}
