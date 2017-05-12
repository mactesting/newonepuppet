$variable = "OUTSIDE"
class webserver::transfer ($variable="INSIDE THE CLASS DEFINITION") {
#	$variable = "INSIDE THE CLASS DEFINITION"
#	$variable = "abc"
	file { '/usr/share/nginx/html/index.html':
#		source => 'puppet:///modules/webserver/index.html',
		content => "My Node FQDN is :-- ${ variable } and my env. is ${environment} ",
#		content => template('webserver/index.html.erb'),
	}
		
}
