FROM  ibmcom/websphere-traditional:latest-ubi

USER root
# change the uid of the was user
RUN usermod --uid 1002 was

#reset the ownership of existing files to the new uid
RUN chown -R 1002:0 /work /opt/IBM /etc/websphere /logs

#switch back to the was user
USER was
