class trans {
	file { '/root/tranferred.txt':
		source => 'puppet:///modules/trans/transfer.txt',
	}

}
