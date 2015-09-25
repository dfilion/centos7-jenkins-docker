## What is centos7-jenkins?

centos7-jenkins is an image that provides a CenOS7 SSH Jenkins client.  
This image is used as a base for the other Rainingpackets Jenkins CentOS 7 images.

## Usage
To run the latest version of the container:

docker run -d -P rainingpackets/centos7-jenkins

## SSH access
You can ssh into the running image using the credentials:

Username: jenkins
Password: jenkins

The ssh host keys are generated on every execution of the image.

Static ssh keys (user or host) are not yet supported.
