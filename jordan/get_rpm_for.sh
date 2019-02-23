wget "https://download.splunk.com/products/universalforwarder/releases/7.2.4/linux/splunkforwarder-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm"
rpm -U splunkforwarder-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm
/opt/splunkforwarder/bin/splunk enable boot-start --accept-license --answer-yes
/opt/splunkforwarder/bin/splunk set deploy-poll 172.20.241.20:8089
