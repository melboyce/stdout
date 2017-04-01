# ALMM TODO

* unix primer
  * modern unix flavors - a brief discussion of architecture
    * linux
    * bsd
      * free
      * net
      * open
    * darwin
    * aix
    * solaris
    * hpux
* userland
  * executables
    * elf
    * shebang/hashbang
  * c/posix standard library
    * kernel interface
    * implementations
      * glibc
      * musl
      * dietlibc
      * uclibc
  * processes
    * states
    * memory management particulars
    * kernel interface
      * context-switching
    * /proc interface
  * shell
    * fork/exec
    * signals
    * keyboard interface
      * emacs mode vs. vi mode
      * tty interface
    * navigation
    * history
    * jobs
    * file descriptors
    * redirection and piping
    * globbing
    * scripting
    * subshells
    * shell configuration
  * logging
    * kernel ring-buffer interface
  * house-keeping
  * distribution models
    * classic (slackware)
    * rhel/centos
    * suse
    * ubuntu
    * debian
* kernel
  * internals
    * intterupts
    * syscalls
  * instrumentation (see also: troubleshooting)
  * booting
  * memory
    * slab
    * vm
    * stack/heap, pointers, brk, et al
    * security
      * old days
      * current landscape
  * driver interface
    * block and char
    * filesystems and storage
    * network
  * network interface (see also: network stack and tooling)
  * userland interface
  * fs apis
    * /proc
    * /dev
    * /dev/log
  * resource isolation
    * chroot
    * cgroups
    * namespaces
    * pivot_root and clone
  * integrated security
    * seccomp{,-bpf}
* network stack and tooling
* troubleshooting
* multi-distro sysadmin notes
  * base configuration
    * users and groups
  * network configuration
  * hardening notes
  * init system
    * configuration
  * package management
  * service management
    * sysvinit
    * bsdinit
    * upstart
    * systemd
    * proper init systems
      * runit
      * sinit
  * userland notes
