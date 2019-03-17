FROM amazonlinux

ARG JAVA_VERSION=11
ARG TERRAFORM_VERSION=0.11.11
ARG HELM_VERSION=v2.11.0
ARG AWSCLI_VERSION=1.16.117

RUN yum -y update \
  && yum -y install epel-release

RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
  && yum install -y ansible python-openshift python-boto3 python2-botocore bzip2 docker-ce git jq python-pip unzip

RUN pip install awscli==${AWSCLI_VERSION}

RUN curl -O https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  && chmod u+x terraform \
  && mv terraform /usr/bin/
  
RUN curl -O https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz \
  && tar -xzf helm-${HELM_VERSION}-linux-amd64.tar.gz \
  && mv /linux-amd64/* /usr/bin/

RUN yum -y clean all \
  && rm -rf /var/cache/yum \
  && mkdir /root/.docker
  
COPY config.json /root/.docker/config.json
RUN mkdir /root/.ssh && chmod 700 /root/.ssh
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 400 /root/.ssh/id_rsa
