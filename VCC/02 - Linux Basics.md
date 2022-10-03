# Leenucs Basics

> Ubuntu 22.04 LTS server
> useful tldr.sh

## Users and accounts

Each user needs an account

Three types of account:
- **root**: the superuser account (god mode)
- **system**: accounts needed for the operation of system specific components
- **user**: gives interactive access to the system for users and groups of users

## User administration files
- `/etc/passwd`: keeps user accout information
- `/etc/shadow`: keeps encrypted passwords of the corresponding account
- `/etc/group`: contains the group information for each account

| Command | Description |
|--|--|
| `useradd` | adds account to system|
|`usermod`|modifies account attributes|
|`passwd`|changes user password|
| `userdel`|deletes accounts from system|
|`groupadd`|adds groups to system|
|`groupmod`|modifies group attributes|
|`groupdel`|removes groups from system|
|`id`|print user and group info of specified/current user|

# Filesystem
## File types
- **normal**
- **executable**: binary or shell scripts
- **directories**
- **device**: all physical devices (USB, HDD, ...)
- **symbolic** or **hard link**: symbolic is a pointer (new inode reference), hard is giving another name for that file (same inode)
- **pipes**

## Filesystem Hierarchy Standard
| Path | Desc |
|--|--|
|`/etc`|**config** files|
|`/dev`|device files, interfaces for device **drivers**|
|`/bin`|**executables** for **all users**|
|`/sbin`|**executables** (usually for **sysadmin**)|
|`/lib`|shared **library** files|
|`/usr`|**additional** commands and data files|
|`/var`|variable lenghts (eg log files)|
|`/home`|home directories|
|`/boot`|files for booting the system|
|`/mnt`|location for mounting **external** file systems|
|`/run`|run-time variable data (like running **deamons**)|

### /proc
virtual file system
contains **runtime system information**
altering content in /proc you can read/change kernel parameters (`man sysctl`) while system is running

## File ownership
- `chown [user.group] [file]`: changes ownership of file or dir
- `chmod` changes `rwx` mode bits of file or dir
	- + or - add or remove mode bit
	- u: set permission for user
	- g: for group
	- o: for others
	- a: set permission for user, group and others
	- example: `chmod ugo+r file`

## Filesystem commands
- `touch`: create file
- `rm`: remove file
- `mkdir`: create directory
- `rmdire`: remove directory
- `find <options> <starting/path> <expression>`:  find file
- view files:
	- `cat`
	- `less`
	- `more`
	- `tail`, `tail -f` for always forcing last line (useful with logs)
	- `grep`

### Compression extraction
- compress: `tar -cvfz`
- extract: `tar -xvfz`

# Processes
> In Unix everything is a file.  If it's not a file, it is a process.

- show processes:
	- `ps -f`: processes of current user
	- `ps -ef`: all processes
	- `top`: processes in real time

- foreground: default behaviour
- background:
	- if `&` is placed after command
	- if <kbd>ctr</kbd>+<kbd>z</kbd>
	- `jobs` shows backgroud processes of current shell
	- `fg <PID>` puts process in foregroud
	- `kill %<job id>` kill the job
	- `kill <pid>` kill the process

# APT package manager
- `apt update`: updates package db
- `apt upgrade`: upgrades packages
- `apt install`
- `apt search <str>`
- `apt remove <pkg-name>`

## Systemd
Linux **initialization system** and **service manager**
- `systemctl`: show service status
- `systemctl [start | stop | status] <unit_name>`: 

`journalctl` utility for querying and display logs from journaled (logging service of systemd)

# Networking

`man ip`

for statically configure network [`netplan`](https://www.netplan.io)

# SSH 
You know the drill

generate key pair `ssh-keygen`
copy key on server `ssh-copy-id`

# Shell Scripting

`#!/bin/bash`

> All variables `export`

[help](https://github.com/techarkit/shell-scripting-tutorial)