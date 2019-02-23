echo "Domain (UPPERCASE): "
read domain

echo "User: "
read user

yum install sssd realmd oddjob oddjob-mkhomedir adcli samba-common samba-common-tools krb5-workstation openldap-clients policycoreutils-python -y
realm join --user=Administrator $domain
kinit $user
