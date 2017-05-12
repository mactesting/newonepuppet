$newvar = "TOPSCOPE"
node 'node2.rps' {
	include nginxwebserver
}


node 'node1.rps' {
	class { 'hi':
		var1 => "coming form site.pp",
	}
	$newvar = "NODESCOPE"
	file { '/root/scope.txt':
		ensure => present,
		content => $newvar,
	}
#	exec { 'clearingscreen'
#		command => '/usr/bin/clear',
#	}
	file { '/root/firstfile.txt':
		ensure => present,
		content => "hello i am first file",
		}
	include firstmodule
	include newmodule
	include ntp
	include test
	include two::two
	include trans
#	include webserver
	
	include arr
#	class { 'webserver::transfer':
#		variable => 'I AM COMING FROM CLASS DECLARATION',
#	}
	include nginxwebserver
}
node default {
	file { '/root/default.txt':
		ensure => present,
	}
	include newmodule
}
