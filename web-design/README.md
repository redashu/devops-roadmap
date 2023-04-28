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

### How to create soft link for test user so that it can write on /var/www/html/

### step 1 -- login with root user and make test as owner of /var/www/html/

```
[root@ip-172-31-47-238 ~]# whoami
root
[root@ip-172-31-47-238 ~]# chown  test  /var/www/html/
[root@ip-172-31-47-238 ~]# 
[root@ip-172-31-47-238 ~]# ls -ld  /var/www/html/
drwxr-xr-x 2 test root 24 Apr 28 12:48 /var/www/html/
[root@ip-172-31-47-238 ~]# 


```

### Now create soft link to /var/www/html/  using test user 

```
[test@ip-172-31-47-238 ~]$ whoami
test
[test@ip-172-31-47-238 ~]$ 
[test@ip-172-31-47-238 ~]$ pwd
/home/test
[test@ip-172-31-47-238 ~]$ ln -s /var/www/html/  my-web
[test@ip-172-31-47-238 ~]$ ls -l
total 0
lrwxrwxrwx 1 test test 14 Apr 28 12:52 my-web -> /var/www/html/
```

