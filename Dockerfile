FROM hashicorp/terraform:0.13.5

ADD run.sh /var/tmp/
RUN chmod 777 /var/tmp/run.sh

ENTRYPOINT ["/var/tmp/run.sh"]
