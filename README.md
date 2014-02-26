ec2-swap: create and swapon swap image on EC2 instance store
============================================================

ec2-swap is an RPM package project to create and swapon an swap image on EC2 instance store on Linux boot sequence.

# CAUTION

- This product is still in heavy development.  DO NOT USE production environment.
- By default, an instance store (a.k.a. ephemeral disk) is formatted by mkfs every system boot.

# Getting Started

ec2-swap RPM package hosted by Classmethod inc. yum repository.
Just execute three command lines below.

    sudo rpm -ivh http://repo.classmethod.info/yum/x86_64/cm-repo-release-0.2.0-1.noarch.rpm
    sudo yum install -y ec2-swap
    sudo service ec2-swap start

# How to build

## Requisite

- [fpm](https://github.com/jordansissel/fpm) (gem)

- ec2-swap is currently built on fpm.
- After fpm install, `mkdir -p ../repo/docroot/yum/x86_64`(if you don't like there, change `OUTPUTDIR` in `build.sh`) and run `build.sh`.

# License

Apache License 2.0

# Maintainer

- Ryuta Otaki <otaki.ryuta@classmethod.jp>
