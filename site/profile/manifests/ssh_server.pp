class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkCmeR6Dp7CFSZrGU51XLfyoiHblTAhpFiaomH/MZ/PYmsETgWzXpxI8/v6RT2e37NgHPKlcIlISBg1l9X8DrNlfxqsQL71RGjd/B6ijZlDp0wc6+xjcn8MGTXZ+1YQ5/WtZ3hm8e39enedKD9LdOFvcQKBlophuu0wI36iJ2P8fN087vqKrt4pewGS0vYdZB6eI9ZVNiMF9NjYUYbLYWqW+uSoIFF1qwNaF7am4p+CfaliqVRW7aalvAInHuOluyw7hlbnfQor6OELOsNLsH0nKe8Xlv8h4mRzBNYblIwrirGAeWaksDQrIRZypc0xHTzHKkP6ddORZPUW7UP1+kZ',
	}  
}
