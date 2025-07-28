
PS C:\WINDOWS\system32> wsl --install
Ubuntu is already installed.
Launching Ubuntu...
Welcome to Ubuntu 24.04.1 LTS (GNU/Linux 5.15.167.4-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon Jul 28 14:24:34 UTC 2025

  System load:  0.27                Processes:             47
  Usage of /:   0.4% of 1006.85GB   Users logged in:       0
  Memory usage: 26%                 IPv4 address for eth0: 172.31.40.186
  Swap usage:   0%


1 updates could not be installed automatically. For more details,
see /var/log/unattended-upgrades/unattended-upgrades.log

This message is shown once a day. To disable it please create the
/home/kishka4/.hushlogin file.
kishka4@DESKTOP-B7AQRKJ:~$ sudo apt update
[sudo] password for kishka4:
Get:1 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Hit:2 http://archive.ubuntu.com/ubuntu noble InRelease
Get:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:4 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [1023 kB]
Get:5 http://archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1282 kB]
Get:7 http://security.ubuntu.com/ubuntu noble-security/main Translation-en [180 kB]
Get:8 http://archive.ubuntu.com/ubuntu noble-updates/main Translation-en [260 kB]
Get:9 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.6 kB]
Get:10 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [876 kB]
Get:11 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [163 kB]
Get:12 http://security.ubuntu.com/ubuntu noble-security/universe Translation-en [193 kB]
Get:13 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1113 kB]
Get:14 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [52.2 kB]
Get:15 http://archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [284 kB]
Get:16 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [1484 kB]
Get:17 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [376 kB]
Get:18 http://security.ubuntu.com/ubuntu noble-security/restricted Translation-en [323 kB]
Get:19 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [1572 kB]
Get:20 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [208 B]
Get:21 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [212 B]
Get:22 http://archive.ubuntu.com/ubuntu noble-updates/restricted Translation-en [341 kB]
Get:23 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
Get:24 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:25 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [7076 B]
Get:26 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [28.4 kB]
Get:27 http://archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [216 B]
Get:28 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
Fetched 9960 kB in 5s (2020 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
120 packages can be upgraded. Run 'apt list --upgradable' to see them.
kishka4@DESKTOP-B7AQRKJ:~$ vi 01_mon_proc.sh
kishka4@DESKTOP-B7AQRKJ:~$ sudo apt install nginx
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following package was automatically installed and is no longer required:
  libllvm17t64
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  nginx-common
Suggested packages:
  fcgiwrap nginx-doc ssl-cert
The following NEW packages will be installed:
  nginx nginx-common
0 upgraded, 2 newly installed, 0 to remove and 120 not upgraded.
Need to get 564 kB of archives.
After this operation, 1596 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 nginx-common all 1.24.0-2ubuntu7.4 [43.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 nginx amd64 1.24.0-2ubuntu7.4 [521 kB]
Fetched 564 kB in 1s (774 kB/s)
Preconfiguring packages ...
Selecting previously unselected package nginx-common.
(Reading database ... 82028 files and directories currently installed.)
Preparing to unpack .../nginx-common_1.24.0-2ubuntu7.4_all.deb ...
Unpacking nginx-common (1.24.0-2ubuntu7.4) ...
Selecting previously unselected package nginx.
Preparing to unpack .../nginx_1.24.0-2ubuntu7.4_amd64.deb ...
Unpacking nginx (1.24.0-2ubuntu7.4) ...
Setting up nginx-common (1.24.0-2ubuntu7.4) ...
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /usr/lib/systemd/system/nginx.service.
Setting up nginx (1.24.0-2ubuntu7.4) ...
 * Upgrading binary nginx                                                                                        [ OK ]
Processing triggers for man-db (2.12.0-4build2) ...
kishka4@DESKTOP-B7AQRKJ:~$ chmod +x 01_mon_proc.sh
kishka4@DESKTOP-B7AQRKJ:~$ ls
01_mon_proc.sh  Voice-AI-Assistant  ansible_quickstart
kishka4@DESKTOP-B7AQRKJ:~$ ./01_mon_proc.sh
./01_mon_proc.sh: line 25: tasklist: command not found
[Mon Jul 28 14:27:41 UTC 2025] ❌ Nginx is NOT running
^C
kishka4@DESKTOP-B7AQRKJ:~$ sudo systemctl start nginx
kishka4@DESKTOP-B7AQRKJ:~$ ./01_mon_proc.sh
./01_mon_proc.sh: line 25: tasklist: command not found
[Mon Jul 28 14:27:59 UTC 2025] ❌ Nginx is NOT running

./01_mon_proc.sh: line 25: tasklist: command not found
[Mon Jul 28 14:28:04 UTC 2025] ❌ Nginx is NOT running
^C
kishka4@DESKTOP-B7AQRKJ:~$ ps
    PID TTY          TIME CMD
    354 pts/0    00:00:00 bash
   1046 pts/0    00:00:00 ps
kishka4@DESKTOP-B7AQRKJ:~$ sudo systemctl start nginx
kishka4@DESKTOP-B7AQRKJ:~$ ps -a
    PID TTY          TIME CMD
    462 pts/1    00:00:00 bash
   1051 pts/0    00:00:00 ps
kishka4@DESKTOP-B7AQRKJ:~$ ps -aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.5  0.3  22128 13468 ?        Ss   14:24   0:01 /sbin/init
root           2  0.0  0.0   2616  1440 ?        Sl   14:24   0:00 /init
root           7  0.0  0.0   2616   132 ?        Sl   14:24   0:00 plan9 --control-socket 6 --log-level 4 --server-fd 7
root          55  0.1  0.5  50420 19644 ?        S<s  14:24   0:00 /usr/lib/systemd/systemd-journald
root         100  0.0  0.1  23860  6128 ?        Ss   14:24   0:00 /usr/lib/systemd/systemd-udevd
systemd+     107  0.0  0.3  21452 11952 ?        Ss   14:24   0:00 /usr/lib/systemd/systemd-resolved
systemd+     108  0.0  0.1  91020  6444 ?        Ssl  14:24   0:00 /usr/lib/systemd/systemd-timesyncd
root         149  0.0  0.0   4236  2688 ?        Ss   14:24   0:00 /usr/sbin/cron -f -P
message+     150  0.0  0.1   9628  5152 ?        Ss   14:24   0:00 @dbus-daemon --system --address=systemd: --nofork --n
redis        161  0.2  0.4  62348 16164 ?        Ssl  14:24   0:00 /usr/bin/redis-server 127.0.0.1:6379
root         170  0.0  0.2  17976  8280 ?        Ss   14:24   0:00 /usr/lib/systemd/systemd-logind
root         176  0.0  0.4 1755840 16252 ?       Ssl  14:24   0:00 /usr/libexec/wsl-pro-service -vv
root         194  0.0  0.0   3160  1060 ?        Ss   14:24   0:00 /sbin/agetty -o -p -- \u --noclear --keep-baud - 1152
syslog       204  0.0  0.1 222508  5340 ?        Ssl  14:24   0:00 /usr/sbin/rsyslogd -n -iNONE
root         212  0.0  0.0   3116  1128 tty1     Ss+  14:24   0:00 /sbin/agetty -o -p -- \u --noclear - linux
root         213  0.0  0.5 107024 22600 ?        Ssl  14:24   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unatt
root         352  0.0  0.0   2616   120 ?        Ss   14:24   0:00 /init
root         353  0.0  0.0   2616   120 ?        S    14:24   0:00 /init
kishka4      354  0.0  0.1   6176  5500 pts/0    Ss   14:24   0:00 -bash
root         355  0.0  0.1   6692  4616 pts/1    Ss   14:24   0:00 /bin/login -f
kishka4      448  0.0  0.2  20356 11376 ?        Ss   14:24   0:00 /usr/lib/systemd/systemd --user
kishka4      449  0.0  0.0  21144  1724 ?        S    14:24   0:00 (sd-pam)
kishka4      462  0.0  0.1   6192  5364 pts/1    S+   14:24   0:00 -bash
root         756  0.0  0.5 370072 20732 ?        Ssl  14:25   0:00 /usr/libexec/packagekitd
polkitd      761  0.0  0.2 308164  7868 ?        Ssl  14:25   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         995  0.0  0.1  11196  6980 ?        S    14:27   0:00 nginx: master process /usr/sbin/nginx -g daemon on; m
www-data     998  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data     999  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data    1000  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data    1001  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
root        1052  0.0  0.0  23864  3036 ?        S    14:28   0:00 (udev-worker)
root        1053  0.0  0.0  23864  3036 ?        S    14:28   0:00 (udev-worker)
kishka4     1054  0.0  0.1   9632  4904 pts/0    R+   14:28   0:00 ps -aux
kishka4@DESKTOP-B7AQRKJ:~$ ps -aux | grep nginx
root         995  0.0  0.1  11196  6980 ?        S    14:27   0:00 nginx: master process /usr/sbin/nginx -g daemon on; master_process on;
www-data     998  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data     999  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data    1000  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
www-data    1001  0.0  0.1  12884  4356 ?        S    14:27   0:00 nginx: worker process
kishka4     1056  0.0  0.0   4088  2032 pts/0    S+   14:28   0:00 grep --color=auto nginx
kishka4@DESKTOP-B7AQRKJ:~$ vi 01_mon_proc.sh
kishka4@DESKTOP-B7AQRKJ:~$ ./01_mon_proc.sh
./01_mon_proc.sh: line 25: tasklist: command not found
[Mon Jul 28 14:29:37 UTC 2025] ❌ nginx is NOT running
./01_mon_proc.sh: line 25: tasklist: command not found
[Mon Jul 28 14:29:42 UTC 2025] ❌ nginx is NOT running
^C
kishka4@DESKTOP-B7AQRKJ:~$ vi 01_mon_proc.sh
kishka4@DESKTOP-B7AQRKJ:~$ ls
01_mon_proc.sh  Voice-AI-Assistant  ansible_quickstart  process_monitor.log
kishka4@DESKTOP-B7AQRKJ:~$ ./01_mon_proc.sh
[Mon Jul 28 14:30:52 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:30:57 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:02 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:10 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:15 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:20 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:25 UTC 2025] ✅ nginx is running
^C
kishka4@DESKTOP-B7AQRKJ:~$ ls
01_mon_proc.sh  Voice-AI-Assistant  ansible_quickstart  process_monitor.log
kishka4@DESKTOP-B7AQRKJ:~$ cat process_monitor.log
[Mon Jul 28 14:27:41 UTC 2025] ❌ Nginx is NOT running
[Mon Jul 28 14:27:59 UTC 2025] ❌ Nginx is NOT running
[Mon Jul 28 14:28:04 UTC 2025] ❌ Nginx is NOT running
[Mon Jul 28 14:29:37 UTC 2025] ❌ nginx is NOT running
[Mon Jul 28 14:29:42 UTC 2025] ❌ nginx is NOT running
[Mon Jul 28 14:30:52 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:30:57 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:02 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:10 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:15 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:20 UTC 2025] ✅ nginx is running
[Mon Jul 28 14:31:25 UTC 2025] ✅ nginx is running
kishka4@DESKTOP-B7AQRKJ:~$