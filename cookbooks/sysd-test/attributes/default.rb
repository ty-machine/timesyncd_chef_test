#update ntp to use gov required timeserver
override['systemd_timesyncd']['time_ntp'] = ['time.nist.gov']