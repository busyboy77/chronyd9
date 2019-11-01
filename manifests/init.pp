class chronyd9 {
	ensure_packages(['chrony'])
file {'/etc/chrony.conf':
	source => 'puppet:///modules/files/chrony.conf',
	notify => Service['chonryd'],
	reqire => Package['chrony'],
}

Service {'chronyd':
	ensure => running,
	enable => true,
}
}
	