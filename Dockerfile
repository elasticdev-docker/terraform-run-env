FROM hashicorp/terraform:0.12.27

ADD run.sh /var/tmp/
RUN chmod 777 /var/tmp/run.sh

ENTRYPOINT ["/var/tmp/run.sh"]
