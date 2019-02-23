echo "Domain (UPPERCASE): "
read domain

yum -y install adcli sssd authconfig pam_krb5 samba4-common
authconfig --enablekrb5 --krb5kdc=$domain --krb5adminserver=$domain --krb5realm=$domain --enablesssd --enablesssdauth --update
adcli join $domain
cp ./sssd.conf /etc/sssd/sssd.conf
chmod 600 /etc/sssd/sssd.conf
echo "session     optional      pam_mkhomedir.so skel=/etc/skel umask=077" >> /etc/pam.d/system-auth
/etc/rc.d/init.d/sssd start
