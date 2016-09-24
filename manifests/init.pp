class resolver (
	$search = $resolver::params::search,
	$nameservers = $resolver::params::nameservers,
) inherits resolver::params {

validate_array($search)
validate_array($nameservers)

file { '/etc/resolv.conf':
     ensure  => file,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     content => template('resolver/resolv.conf.erb'),
   }
 }
