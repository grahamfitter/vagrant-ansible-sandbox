FROM registry.access.redhat.com/rhel6/rhel

# Add centos EOL repos to allow packages to be downloaded in the absence of RHEL repos
ADD CentOS-Base.repo /etc/yum.repos.d
ADD RPM-GPG-KEY-CentOS-6 /etc/pki/rpm-gpg
RUN yum makecache

CMD /bin/bash

