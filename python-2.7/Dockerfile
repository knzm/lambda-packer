FROM amazonlinux:latest

RUN yum -y update && \
    yum -y install \
      gcc \
      python27 \
      python27-devel \
      python27-pip \
      python27-virtualenv \
      zip && \
    yum clean all

RUN virtualenv-2.7 /venv
ENV PATH /venv/bin:$PATH

RUN pip install -U pip --disable-pip-version-check

COPY pack.sh /usr/local/bin/pack
RUN chmod a+x /usr/local/bin/pack

WORKDIR /app
