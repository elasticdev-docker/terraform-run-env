FROM hashicorp/terraform:0.12.27

ENV TERRAFORM_VERSION=0.12.27

VOLUME ["/share"]
WORKDIR /share

ENV PATH = $PATH:/usr/local/google-cloud-sdk/bin/

ADD run.sh /bin
ENTRYPOINT ["/bin/run.sh"]
