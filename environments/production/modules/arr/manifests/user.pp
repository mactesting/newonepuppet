class arr::user {
	$users = ['demouser1','demouser2']
	$users.each |$use| {
		user { "${ use }":
			ensure => present,
			password => '$6$f3CFDWF3$4C1D9vTz7iGUXlokQPd/AQAqP8XpkHgtqrxzkhUG77jOzZSJcEHaYDfqsNtPFZDxGH60R5tdztMIDYN1G15xI.',	
		}
	}
}
