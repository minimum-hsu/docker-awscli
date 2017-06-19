FROM centos:7

LABEL maintainer s5550055@yahoo.com.tw

RUN rpm --import https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7 \
  && yum install -y -q epel-release \
  && rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 \
  && yum install -y -q vim python34 python34-pip jq \
  && pip3 install -U -q pip awscli boto3

ENTRYPOINT ["aws"]
