#update ntp to use gov required timeserver
#override['systemd_timesyncd']['time_ntp'] = ['time.nist.gov']
#override['systemd_timesyncd']['time']['ntp'] = ['time.nist.gov']
override['systemd']['time'] = ['time.nist.gov']