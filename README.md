# Supported tags and respective `Dockerfile` links

- latest [(Dockerfile)](https://github.com/dfilion/centos6-jenkins-docker/blob/master/Dockerfile)

For more information about this image please see the [GitHub repo](https://github.com/dfilion/centos7-jenkins-docker).


# What is centos7-jenkins?

centos6-jenkins is an image that provides a 64-bit CenOS6 ssh Jenkins client.


# Why centos7-jenkins?

I created this image to use with the Jenkins-CI Docker plugin.  While the
plugins author provides a Debian based image, I required a CentOS based image.


# Usage

While this image is meant to be used by Jenkins-CI, you can run it just like any
other image.

## Running in the background, exposing the SSH port

    docker run -d -p 2222:22 rainingpackets/centos7-jenkins


# SSH details

The running image is accessed using SSH using the credentials:

Username: jenkins
Password: jenkins

New SSH host keys are generated on every execution of the image.

Static ssh keys (user or host) are not yet supported.
