#!/bin/bash

MAJOR_VER=0
MINOR_VER=2
PATCH_VER=0
OUTPUTDIR=../repo/docroot/yum/x86_64

fpm -s dir -t rpm \
	-v $MAJOR_VER.$MINOR_VER.$PATCH_VER \
	-n ec2-swap \
	-a noarch \
	-C ./source \
	-p $OUTPUTDIR \
	--maintainer "Ryuta Otaki<otaki.ryuta@classmethod.jp>" \
	--vendor "Classmethod, Inc." \
	--prefix / \
	--license "ASL 2.0" \
	--url "http://dev.classmethod.jp/" \
	--description "ec2-swap is to create swapon swap image on EC2 instance store" \
	-d util-linux-ng \
	--after-install ./script/postinstall \
	--before-remove ./script/preuninstall \
	.
