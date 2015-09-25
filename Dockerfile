# Based on the base CentOS6 image, create an image customized as a
# Jenkins SSH slave.

FROM centos:7
MAINTAINER David Filion <filiond@gmail.com>

# Install updates and required packages
RUN /usr/bin/yum check-update; /usr/bin/yum -y upgrade
RUN /usr/bin/yum -y install \
        git \
        java-1.8.0-openjdk-headless \
        openssh-server \
        sudo 

# Add Mercurial support.
RUN /usr/bin/yum -y localinstall http://mercurial.selenic.com/release/centos7/RPMS/x86_64/mercurial-3.4.2-0.x86_64.rpm

RUN /usr/bin/yum clean all

# Fix SSH's PAM configuration so we can login.
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd

# Update sudo setup.
RUN sed -i 's|Defaults    requiretty|#Defaults    requiretty|' /etc/sudoers && echo 'jenkins ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Setup the jenkins user. Unlike a standard jenkins install, we give Jenkins
# a shell so it can login.
RUN useradd -d /var/lib/jenkins -m -s /bin/bash -c "Jenkins Continuous Build Account" jenkins
RUN echo "jenkins:jenkins" | chpasswd

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "-l", "/entrypoint.sh"]
