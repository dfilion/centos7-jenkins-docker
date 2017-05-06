# Supported tags and respective `Dockerfile` links

- latest [(Dockerfile)](https://github.com/dfilion/centos7-jenkins-docker/blob/master/Dockerfile)

For more information about this image please see the [GitHub repo](https://github.com/dfilion/centos7-jenkins-docker).


# What is centos7-jenkins?

centos7-jenkins is yet another image that provides a CentOS 7.2-1511 
SSH Jenkins client.


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


Static ssh keys (user or host) are not yet supported.

# Build Notes

If your building this container on RHEL/CentOS 7.2, read the [RHEL 7.2 Release Notes](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/7.2_Release_Notes/technology-preview-file_systems.html)
to avoid errors with `rm -rf`.
