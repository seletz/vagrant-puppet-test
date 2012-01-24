host {'self':
	ensure       => present,
	name         => $::fqdn,
	host_aliases => ['puppet', $::hostname],
	ip           => $::ipaddress,
}
    
file {'motd':
      ensure  => file,
      path    => '/etc/motd',
      mode    => 0644,
      content => "Welcome to ${::hostname},\na ${::operatingsystem} island in the sea of ${::domain}.\n",
}
