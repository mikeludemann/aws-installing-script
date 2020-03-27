#!/bin/bash

echo "Checking aws"

if aws --version > /dev/null; then
	echo "aws is already installed."
else
	echo "installing aws"
	if curl --version > /dev/null; then
		echo "curl is already installed."
		echo "Download the package:"
		curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
		echo "Install the aws package:"
		sudo installer -pkg ./AWSCLIV2.pkg -target /
		"Debug/Log check in the following directory: '/var/log/install.log'"
	else
		echo "curl is not installed"
	fi
	echo "aws is not installed. / Could not be installed."
fi
