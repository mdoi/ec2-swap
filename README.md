ec2-swap: create and swapon swap image on EC2 instance store
============================================================

ec2-swap is an RPM package project to create and swapon an swap image on EC2 volume Linux boot sequence.

# CAUTION

- This product is still in heavy development.  DO NOT USE production environment.
- By default, an instance store (a.k.a. ephemeral disk) is formatted by mkfs every system boot.


# Getting Started

ec2-swap RPM package hosted by Classmethod inc. yum repository.
Just execute three command lines below.

    sudo rpm -ivh http://repo.classmethod.info/yum/x86_64/cm-repo-release-0.2.0-1.noarch.rpm
    sudo yum install -y ec2-swap


# Swap File Specification

## Location of swap file

If an instance was launched with any instance volumes, swapfile create on instance volume "ephemeral0", if not create on root volume (EBS Backed and S3 Backed). 
Swap name and path are configurable to change `INSTANCEVOL_MOUNTPOINT` and `SWAPFILENAME`


## Size of swap file

Size is according to standard logic by Red Hat.

https://access.redhat.com/site/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Installation_Guide/s2-diskpartrecommend-x86.html

If ratio of available volume size to standard swap size isn't enough, swap file will fits in 10% available space.


# How to build

## Requisite

- [fpm](https://github.com/jordansissel/fpm) (gem)

- ec2-swap is currently built on fpm.
- After fpm install, `mkdir -p ../repo/docroot/yum/x86_64`(if you don't like there, change `OUTPUTDIR` in `build.sh`) and run `build.sh`.


# License

Apache License 2.0

# Maintainer

- Ryuta Otaki <otaki.ryuta@classmethod.jp>
