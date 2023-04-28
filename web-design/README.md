### How to enable password access in linux over amazon cloud 

```
[root@ip-172-31-47-238 html]# rpm -qc openssh-server
/etc/pam.d/sshd
/etc/ssh/sshd_config
/etc/sysconfig/sshd
[root@ip-172-31-47-238 html]# grep -in password /etc/ssh/sshd_config 
60:# To disable tunneled clear text passwords, change to no here!
61:#PasswordAuthentication yes
62:#PermitEmptyPasswords no
63:PasswordAuthentication no
65:# Change to no to disable s/key passwords
86:# PasswordAuthentication.  Depending on your PAM configuration,
88:# the setting of "PermitRootLogin without-password".
90:# PAM authentication, then enable this but set PasswordAuthentication
[root@ip-172-31-47-238 html]# vim +63  /etc/ssh/sshd_config 
[root@ip-172-31-47-238 html]# systemctl restart sshd
[root@ip-172-31-47-238 html]# grep -in password /etc/ssh/sshd_config 
60:# To disable tunneled clear text passwords, change to no here!
61:#PasswordAuthentication yes
62:#PermitEmptyPasswords no
63:PasswordAuthentication yes
65:# Change to no to disable s/key passwords
86:# PasswordAuthentication.  Depending on your PAM configuration,
88:# the setting of "PermitRootLogin without-password".

```
