class webserver::servicenginx {
	service { 'nginx':
		ensure => running,
		enable => true,
	}
}
