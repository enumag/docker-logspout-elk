# Edit `/etc/sysctl.conf` to make this permanent.
vm-fix:
	sysctl -w vm.max_map_count=262144

