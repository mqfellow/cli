FROM mqfellow/awscli-jq:1.0.0

RUN mkdir -p /mf/cli/bin
ADD scripts /mf/cli/bin
RUN chmod -R 777 /mf/cli/bin
ENV PATH $PATH:/mf/cli/bin

RUN mkdir -p /mf/cli/userdata
ADD userdata /mf/cli/userdata



