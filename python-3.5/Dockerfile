FROM amazonlinux:latest

RUN yum -y update && \
    yum -y install \
      gcc \
      python35 \
      python35-devel \
      python35-pip \
      python35-virtualenv \
      zip && \
    yum clean all

RUN virtualenv-3.5 /venv
ENV PATH /venv/bin:$PATH

RUN pip install -U pip --disable-pip-version-check

COPY pack.sh /usr/local/bin/pack
RUN chmod a+x /usr/local/bin/pack

WORKDIR /app
