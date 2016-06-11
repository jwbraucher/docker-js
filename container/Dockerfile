# Docker JS

FROM braucher/js
MAINTAINER Jeff Braucher <jeff@braucher.net>

# Expose grunt ports for serve and reload
EXPOSE 9000
EXPOSE 35729

# Start application
COPY bin/* /bin/
ENTRYPOINT ["app"]
CMD ["start"]
