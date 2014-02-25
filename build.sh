#!/bin/bash

OUTPUTDIR=../repo/yum/x86_64

fpm -s dir -t rpm \
	-v 0.1.0 \
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
createrepo -v -o $OUTPUTDIR $OUTPUTDIR
