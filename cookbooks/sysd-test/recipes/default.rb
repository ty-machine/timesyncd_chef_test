include_recipe 'systemd::timesyncd'

systemd_timesyncd 'my-overrides' do
  time do
    ntp ['time.nist.gov']
  end
  notifies :restart, "service[systemd-timesyncd]"
end