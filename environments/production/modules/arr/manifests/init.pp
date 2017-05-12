class arr {
	$newarray = ['file1','file2','file3']
	$newarray.each |$new| {
		file { "/root/${ new }":
			ensure => present,
		}
	}
	include arr::user				
}
