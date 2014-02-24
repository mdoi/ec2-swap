ec2-swap: create swapon swap image on EC2 instance store
========================================================

ec2-swap is an RPM package project to create and swapon an swap image on EC2 instance store on Linux boot sequence.

# Getting Started

ec2-swap RPM package hosted by Classmethod inc. yum repository.
Just execute three command lines below.

    sudo rpm -ivh http://repo.classmethod.info/yum/x86_64/cm-repo-release-0.1.0-1.noarch.rpm
    sudo yum install -y ec2-swap
    sudo reboot

# How to build

ec2-swap is built on [fpm build tool](https://github.com/jordansissel/fpm). After fpm install, run `build.sh`.

# License

Apache License 2.0

# Maintainer

- Ryuta Otaki <otaki.ryuta@classmethod.jp>
