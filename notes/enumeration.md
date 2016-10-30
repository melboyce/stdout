# Enumeration
When troubleshooting a Linux system, first enumerate. These are my versions.

## Performace Investigation
This is entirely based on [Brendan Gregg](http://www.brendangregg.com/)'s
fine work in the field.

1. `uptime`
2. `dmesg | tail`
3. `vmstat 1`
4. `mpstat -P ALL 1`
5. `pidstat 1`
6. `iostat -xz 1`
7. `free -m`
8. `sar -n DEV 1`
9. `sar -n TCP,ETCP 1`
10. `top`

## Security Cross-check
Not as pescriptive, this is more a list of areas to poke around in.

1. network
   - listeners
   - traffic
   - performance
   - resolver
   - routes
2. /etc
   - release
   - sudo
   - sshd
   - services
   - logging
   - periodic processes
   - netfilter
   - sysctl
   - hids/nids/rbac/etc
   - users/groups/passwd-hash-level/pwck/grpck/etc
3. /var
   - periodic processes
   - mail
   - logging
   - caches
4. userland
   - patch-level
   - setuid/setgid/etc binaries
   - permissions
5. users
   - perms
   - who/last/etc
   - root activity
6. misc
