class machine_info {
	if $facts[kernel] == "windows" {
		$info_facts = "C:\Windows\Temp\Machine_Info.txt"
	} else {
		$info_facts = "/tmp/machine_info.txt"
	}	

	file { 'machine_info':
		path => $info_path,
		content => template('machine_info/info.erb'),
	}

}
