FROM mqfellow/mq:latest

RUN mkdir -p /mf/cli/bin
ADD scripts /mf/cli/bin
RUN chmod -R 777 /mf/cli/bin
ENV PATH $PATH:/mf/cli/bin

RUN mkdir -p /mf/cli/userdata
ADD userdata /mf/cli/userdata

RUN mkdir -p /mf/cli/cert
ADD cert /mf/cli/cert

