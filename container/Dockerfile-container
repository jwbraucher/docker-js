# Docker JS

FROM braucher/puppet
MAINTAINER Jeff Braucher <jeff@braucher.net>

# Run puppet apply
COPY ./puppet/ /puppet-app/
ENV PUPPET_HOME /puppet-app
RUN /puppet-apply

# Start application
COPY bin/* /bin/
ENTRYPOINT ["app"]
CMD ["start"]
