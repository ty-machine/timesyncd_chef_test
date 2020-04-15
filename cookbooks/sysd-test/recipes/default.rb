include_recipe 'systemd::timesyncd'

systemd_timesyncd 'time_overrides' do
    time do
      ntp ['time.nist.gov']
    end
end
